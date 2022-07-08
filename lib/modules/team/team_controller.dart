import 'dart:io';

import 'package:alokito_new/core/extensions/lat_lng_ext.dart';
import 'package:alokito_new/core/image/image_service.dart';
import 'package:alokito_new/di/navigation_key.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';

import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/modules/team/team_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'team_ui_event.dart';

class TeamController extends GetxController {
  TeamController({required this.service});
  ITeamService service;

  final AuthController authController = Get.find<AuthController>();

  RxBool loading = false.obs;
  int page = 1;

  Rx<List<Team>> topTeamList = Rx<List<Team>>([]);
  RxList<Team> teamList = RxList<Team>();
  RxList<Team> searchResultList = RxList<Team>();

  Rx<Team?> get topTeam => topTeamList.value.firstOrNull.obs;

  Rx<File> coverTeamImage = File('').obs;
  Rx<File> profileTeamImage = File('').obs;

  Rx<Team> newTeam = Team(startDate: DateTime.now(), endDate: DateTime.now().add(const Duration(days: 3))).obs;
  RxList<Marker> markerList = RxList<Marker>.empty();

  late TextEditingController searchTextController;

  @override
  void onInit() {
    super.onInit();

    retrieveTeams();
    retrieveTopTeams();
    searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  bool isLikedByUser(Team team) {
    final userID = authController.getCurrentUserId();

    var contains = team.likes.contains(userID);

    print('TeamID: ${team.id} is liked by $userID: $contains');

    return contains;
  }

  Future toggleLikeTeam({required Team team}) async {
    try {
      final userID = authController.getCurrentUserId();

      final bool isTeamLiked = isLikedByUser(team);

      isTeamLiked
          ? await service.dislikeTeam(
              teamId: team.id!,
              userId: userID,
            )
          : await service.likeTeam(
              teamId: team.id!,
              userId: userID,
            );

      final teamIndex = topTeamList.value.indexWhere((e) => e.id == team.id);
      Team teamInList = topTeamList.value[teamIndex];

      final List<String> likeList = team.likes.map((e) => e).toList();

      if (isTeamLiked) {
        likeList.remove(userID);
      } else {
        likeList.add(userID);
      }

      teamInList = teamInList.copyWith(likes: likeList);

      final newList = topTeamList.value
          .mapIndexed(
            (i, t) => i == teamIndex ? t.copyWith(likes: likeList) : t,
          )
          .toList();

      topTeamList.value = newList;
    } catch (e, st) {
      print('TeamController: Getting Teams Error $e');
      print('$st');
    }
  }

  Future searchTeams({
    required String searchTerm,
  }) async {
    try {
      loading.value = true;
      final searchResult = await service.searchTeams(
        limit: 15,
        searchTerm: searchTerm,
        userId: authController.currentUser.value.id!,
      );
      searchResultList.value = searchResult;
      loading.value = false;
      print('search result: ${searchResult.length}');
    } catch (e) {
      print('TeamController: Getting Teams Error $e');
    }
  }

  Future retrieveTopTeams() async {
    try {
      final list = await service.getTopTeams(limit: 5);

      topTeamList.value = list;
    } catch (e) {
      print('TeamController: Getting Top Team Error: $e');
    }
  }

  Future retrieveTeams() async {
    try {
      final list = await service.getAllTeams(
        page: page,
        userId: Get.find<AuthController>().getCurrentUserId(),
      );

      teamList.value = list;
    } catch (e) {
      print('TeamController: Getting Teams Error $e');
    }
  }

  void handleUiEvent(TeamUiEvent event) {
    event.when(
      setName: (value) => newTeam.value = newTeam.value.copyWith(teamName: value),
      setLocation: (value) async {
        markerList.value = [
          Marker(markerId: MarkerId(value.toString()), position: value),
        ];

        newTeam.value = newTeam.value.copyWith(
          area: await value.toReadableAddress(),
          location: await value.toReadableAddress(),
          geometry: Geometry(coordinates: [value.longitude, value.latitude]),
        );
      },
      setObjective: (value) => newTeam.value = newTeam.value.copyWith(objective: value),
      setGoal: (value) => newTeam.value = newTeam.value.copyWith(goal: value),
      setSummary: (value) => newTeam.value = newTeam.value.copyWith(summary: value),
      setPreviousGoalAchieved: (value) => newTeam.value = newTeam.value.copyWith(previousGoalAchieved: value),
      setPreviousGoalSummary: (value) => newTeam.value = newTeam.value.copyWith(previousGoalSummary: value),
      setStartDate: (value) => newTeam.value = newTeam.value.copyWith(startDate: value),
      setEndDate: (value) => newTeam.value = newTeam.value.copyWith(endDate: value),
      create: createTeam,
    );
  }

  Future<void> createTeam() async {
    loading.value = true;

    final navKey = Get.find<NavigationKey>();

    try {
      final coverImageDownloadURL = await ImageService.uploadImageToFirebaseAndGetUrl(coverTeamImage.value, 'teams');
      final profileImageDownloadURL = await ImageService.uploadImageToFirebaseAndGetUrl(profileTeamImage.value, 'teams');

      final currentUserId = Get.find<AuthController>().getCurrentUserId();

      newTeam.value = newTeam.value.copyWith(
        creatorId: currentUserId,
        creator: currentUserId,
        imageUrl: profileImageDownloadURL,
        coverImageUrl: coverImageDownloadURL,
      );

      await service.createTeam(team: newTeam.value);

      navKey.mainNavigator.currentState?.pop();

      loading.value = false;
    } catch (e) {
      print('Team: Error: $e');
      loading.value = false;
    }
  }

  Future<void> getCoverImage() async {
    final imageFile = await ImageService.pickImageFromGallery();
    if (imageFile == null) return;

    coverTeamImage.value = imageFile;
  }

  Future<void> getProfileImage() async {
    final imageFile = await ImageService.pickImageFromGallery();
    if (imageFile == null) return;

    profileTeamImage.value = imageFile;
  }

  bool isTeamJoinedByUser(Team team) {
    final userID = authController.getCurrentUserId();

    var contains = team.members.indexWhere((user) => user.id == userID) != -1;

    print('TeamID: ${team.id} is liked by $userID: $contains');

    return contains;
  }

  Future<void> joinTeam(Team team) async {
    final userId = authController.getCurrentUserId();
    final currentUserInfo = authController.currentUserInfo;
    final currentUser = currentUserInfo.value.maybeWhen(data: (e) => e, orElse: () => null);

    await service.joinTeam(teamId: team.id!, userId: userId);

    topTeamList.value = topTeamList.value.map((e) {
      if (e.id != team.id) return e;

      final members = e.members;

      if (isTeamJoinedByUser(team)) {
        members.remove(currentUser);
      } else {
        members.add(currentUser!);
      }

      e = e.copyWith(members: members);

      return e;
    }).toList();
  }
}

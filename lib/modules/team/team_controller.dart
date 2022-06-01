import 'dart:io';

import 'package:alokito_new/core/extensions/lat_lng_ext.dart';
import 'package:alokito_new/core/image/image_service.dart';
import 'package:alokito_new/di/navigation_key.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/modules/team/team_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'team_ui_event.dart';

class TeamController extends GetxController {
  TeamController({
    required this.service,
  });
  ITeamService service;

  RxBool loading = false.obs;

  RxList<Team> teamList = RxList<Team>();
  int page = 1;

  Rx<File> coverTeamImage = File('').obs;
  Rx<File> profileTeamImage = File('').obs;

  Rx<Team> newTeam = Team(startDate: DateTime.now(), endDate: DateTime.now().add(const Duration(days: 3))).obs;
  RxList<Marker> markerList = RxList<Marker>.empty();

  @override
  void onInit() {
    super.onInit();

    retriveTeams();
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
      final coverImageDownloadURL = await ImageService.uploadImageToFirebaseAndGetUrl(
        coverTeamImage.value,
        'teams',
      );
      final porfileImageDownloadURL = await ImageService.uploadImageToFirebaseAndGetUrl(
        profileTeamImage.value,
        'teams',
      );

      final currentUserId = Get.find<AuthController>().getCurrentUserId();

      print('Team: currentUserID: $currentUserId');

      newTeam.value = newTeam.value.copyWith(
        creatorId: currentUserId,
        creator: currentUserId,
        imageUrl: porfileImageDownloadURL,
        coverImageUrl: coverImageDownloadURL,
      );

      print('Team: newTeam: ${newTeam.toJson()}');

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

  Future retriveTeams() async {
    try {
      final list = await service.getAllTeams(
        page: page,
        userId: Get.find<AuthController>().getCurrentUserId(),
      );

      teamList.value = list;
    } catch (e) {
      print('TeamController: $e');
    }
  }
}

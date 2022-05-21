import 'dart:io';

import 'package:alokito_new/core/extensions/lat_lng_ext.dart';
import 'package:alokito_new/core/image/image_service.dart';
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

  final locationLatLng = const LatLng(23, 90).obs;
  Rx<String> locationAddress = ''.obs;
  RxList<Marker> markerList = RxList<Marker>.empty();

  RxString name = ''.obs;
  RxString objective = ''.obs;
  RxString goal = ''.obs;
  RxBool previousGoalAcheived = false.obs;
  RxString previousGoalSummary = ''.obs;
  RxString summary = ''.obs;
  Rx<DateTime> startDate = DateTime.now().obs;
  Rx<DateTime> endDate = DateTime.now().obs;

  @override
  void onInit() {
    super.onInit();

    retriveTeams();
  }

  void handleUiEvent(TeamUiEvent event) {
    event.when(
      setName: (value) => name.value = value,
      setLocation: (value) async {
        locationLatLng.value = value;
        locationAddress.value = await value.toReadableAddress();
        markerList.value = [
          Marker(markerId: MarkerId(locationLatLng.toString()), position: value),
        ];
      },
      setObjective: (value) => objective.value = value,
      setGoal: (value) => goal.value = value,
      setSummary: (value) => summary.value = value,
      setPreviousGoalAchieved: (value) => previousGoalAcheived.value = value,
      setPreviousGoalSummary: (value) => previousGoalSummary.value = value,
      setStartDate: (value) => startDate.value = value,
      setEndDate: (value) => endDate.value = value,
      create: createTeam,
    );
  }

  Future<void> createTeam() async {
    loading.value = true;

    final coverImageDownloadURL = await ImageService.uploadImageToFirebaseAndGetUrl(
      coverTeamImage.value,
      'teams',
      FirebaseStorage.instance,
    );
    final porfileImageDownloadURL = await ImageService.uploadImageToFirebaseAndGetUrl(
      profileTeamImage.value,
      'teams',
      FirebaseStorage.instance,
    );

    final currentUserId = Get.find<AuthController>().getCurrentUserId();

    print('Team: currentUserID: $currentUserId');

    final team = Team(
      area: locationAddress.value,
      location: locationAddress.value,
      imageUrl: porfileImageDownloadURL,
      coverImageUrl: coverImageDownloadURL,
      creatorId: currentUserId,
      creator: currentUserId,
      geometry: Geometry(coordinates: [locationLatLng.value.longitude, locationLatLng.value.latitude]),
      teamName: name.value,
      goal: goal.value,
      objective: objective.value,
      summary: summary.value,
      previousGoalSummary: previousGoalSummary.value,
      previousGoalAchieved: previousGoalAcheived.value,
      startDate: startDate.value,
      endDate: endDate.value,
    );

    try {
      await service.createTeam(team: team);
    } catch (e) {
      print('Team: Error: $e');
    }

    loading.value = false;
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

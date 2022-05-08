import 'dart:io';

import 'package:alokito_new/core/extensions/lat_lng_ext.dart';
import 'package:alokito_new/core/image/image_service.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
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

  RxList<Team> teamList = RxList<Team>();
  int page = 1;
  RxBool loading = false.obs;

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
      create: () {},
    );
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

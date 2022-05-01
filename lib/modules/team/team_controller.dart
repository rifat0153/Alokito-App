import 'dart:io';

import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/modules/team/team_service.dart';
import 'package:image_picker/image_picker.dart';
import 'team_ui_action.dart';

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

  Rx<Geometry?> location = null.obs;
  RxString name = ''.obs;
  RxString objective = ''.obs;
  RxString goal = ''.obs;
  RxString summary = ''.obs;
  Rx<DateTime?> startDate = null.obs;
  Rx<DateTime?> endDate = null.obs;

  @override
  void onInit() {
    super.onInit();

    retriveTeams();
  }

  void handleUiAction(TeamUiAction action) {
    action.when(
      setName: (value) => name.value = value,
      setLocation: (value) => name.value = value,
      setObjective: (value) => objective.value = value,
      setGoal: (value) => goal.value = value,
      setSummary: (value) => summary.value = value,
      setStartDate: (value) => startDate.value = value,
      setEndDate: (value) => endDate.value = value,
      create: () {},
    );
  }

  Future<void> getCoverImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    final File imageFile = File(pickedFile?.path ?? "");

    if (imageFile.path.isEmpty) return;

    coverTeamImage.value = imageFile;
  }

  Future<void> getProfileImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    final File imageFile = File(pickedFile?.path ?? "");

    if (imageFile.path.isEmpty) return;

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

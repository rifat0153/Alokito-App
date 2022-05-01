import 'dart:io';

import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/modules/team/team_service.dart';
import 'package:image_picker/image_picker.dart';

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

  @override
  void onInit() {
    super.onInit();

    retriveTeams();
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

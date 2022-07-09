import 'dart:io';

import 'package:alokito_new/core/extensions/lat_lng_ext.dart';
import 'package:alokito_new/core/image/image_service.dart';
import 'package:alokito_new/di/navigation_key.dart';
import 'package:alokito_new/models/help_ask/help_ask.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/help_ask/help_ask_service.dart';
import 'package:alokito_new/modules/help_ask/helpers/help_ask_create_event.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HelpAskCreateController extends GetxController {
  final IHelpAskService service;
  HelpAskCreateController({required this.service});

  final AuthController authController = Get.find<AuthController>();

  RxBool loading = false.obs;

  Rx<Geometry?> geometry = null.obs;
  Rx<String> area = ''.obs;
  Rx<File> imageFile = File('').obs;

  RxList<Marker> markerList = RxList<Marker>.empty();

  Rx<HelpAsk> newHelpAsk = const HelpAsk().obs;

  void handleUiEvent(HelpAskCreateEvent event) {
    event.when(
      setDetails: (String value) => newHelpAsk.value = newHelpAsk.value.copyWith(helpAskDetails: value),
      setLocation: (LatLng value) async {
        markerList.value = [
          Marker(markerId: MarkerId(value.toString()), position: value),
        ];

        newHelpAsk.value = newHelpAsk.value.copyWith(
          area: await value.toReadableAddress(),
          location: await value.toReadableAddress(),
          geometry: Geometry(coordinates: [value.longitude, value.latitude]),
        );
      },
      create: createHelpAsk,
    );
  }

  Future<void> getHelpAskImage() async {
    final file = await ImageService.pickImageFromGallery();
    if (file == null) return;

    imageFile.value = file;
  }

  Future<void> createHelpAsk() async {
    loading.value = true;

    final navKey = Get.find<NavigationKey>();

    print('HelpAsk: Adding');

    try {
      final imageUrl = await ImageService.uploadImageToFirebaseAndGetUrl(imageFile.value, 'helpAsks');

      final currentUserId = Get.find<AuthController>().getCurrentUserId();
      final currentUserInfo = authController.currentUserInfo;
      final currentUser = currentUserInfo.value.maybeWhen(data: (e) => e, orElse: () => null);

      newHelpAsk.value = newHelpAsk.value.copyWith(
        creatorId: currentUserId,
        creator: currentUser,
        imageUrl: imageUrl,
      );

      await service.addHelpAsk(newHelpAsk.value);

      navKey.mainNavigator.currentState?.pop();

      loading.value = false;
    } catch (e) {
      print('HelpAsk: Add Error: $e');
    } finally {
      loading.value = false;
    }
  }
}

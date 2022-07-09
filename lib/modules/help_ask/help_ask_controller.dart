import 'package:alokito_new/core/extensions/geometry_extension.dart';
import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/help_ask/help_ask.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/chat/chat_controller.dart';
import 'package:alokito_new/modules/chat_room/controllers/chat_room_controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'help_ask_service.dart';

class HelpAskController extends GetxController {
  final HelpAskService service;
  HelpAskController({required this.service});

  final authController = Get.find<AuthController>();

  RxBool loading = false.obs;

  Rx<List<HelpAsk>> helpAsks = Rx<List<HelpAsk>>([]);
  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;

  @override
  void onInit() {
    super.onInit();

    getAllHelpAskNearby();
  }

  Future<void> createChat(HelpAsk helpAsk) async {
    final ChatRoomController chatController = Get.find();
    final currentUser = authController.getCurrentUser();

    await chatController.createChatRoom(
      relatedDocId: helpAsk.id ?? '',
      user1: helpAsk.creator?.id ?? '',
      user1Image: helpAsk.creator?.imageUrl ?? '',
      user1Name: helpAsk.creator?.userName ?? '',
      user2: currentUser?.id ?? '',
      user2Image: currentUser?.imageUrl ?? '',
      user2Name: currentUser?.userName ?? '',
      roomType: 'helpAsks',
    );
  }

  Future getAllHelpAskNearby() async {
    loading.value = true;

    try {
      final userId = authController.getCurrentUserId();
      final currentPosition = await LocationHelper.determinePosition();

      final list = await service.findNearbyHelpAsk(
        lat: currentPosition.latitude,
        lng: currentPosition.longitude,
        userId: userId,
        distance: 13000,
      );

      helpAsks.value = list;

      _updateMarkers(helpAsks.value);
    } catch (e, st) {
      print('HelpAsk: error while fetching: $e');
    } finally {
      loading.value = false;
    }
  }

  void _updateMarkers(List<HelpAsk> helpAsks) async {
    markers.value = <MarkerId, Marker>{};
    final geometryList = helpAsks.map((e) => e.geometry!).toList();

    markers.value = await geometryList.toMarkerMap();
  }
}

import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/help_ask/help_ask.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'help_ask_service.dart';

class HelpAskController extends GetxController {
  final HelpAskService service;
  HelpAskController({required this.service});

  final authController = Get.find<AuthController>();

  RxBool loading = false.obs;
  Rx<List<HelpAsk>> helpAsks = Rx<List<HelpAsk>>([]);

  @override
  void onInit() {
    super.onInit();

    getAllHelpAskNearby();
  }

  Future getAllHelpAskNearby() async {
    print('HelpAsk: Fetch Called');
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
    } catch (e, st) {
      print('HelpAsk: error while fetching: $e');
    } finally {
      loading.value = false;
    }
  }
}

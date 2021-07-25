import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask_giver/gift_ask_giver_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/gift_ask/gift_ask.dart';
import 'package:get/get.dart';
import '../../shared/success_error_sheet.dart';

class GiftAskGiverController extends GetxController {
  GiftAskGiverService giftAskGiverService = GiftAskGiverService(FirebaseFirestore.instance);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> acceptGiftAskRequest(GiftAsk giftAsk) async {
    LocalUser currentUser = Get.find<AuthController>().currentUser.value;

    GiftAskGiver giftAskGiver = GiftAskGiver(
      id: '${currentUser.id}.${giftAsk.id}',
      giftAskStatus: GiftAskStatus.requestPending,
      giftAsk: giftAsk,
      giver: currentUser,
      requester: giftAsk.requester,
      createdAt: Timestamp.now(),
    );

    try {
      await giftAskGiverService.add(giftAskGiver);

      await Get.find<AuthController>()
          .authService
          .updateLocalUser(currentUser.copyWith(acceptedGiftId: giftAsk.id));
    } on FirebaseException catch (e) {
      ShowSuccessOrError.showSuccessOrErrorBottomSheet(false, '', e.message ?? '');
    }
  }
}

import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:get/get.dart';

class GiftReceiverDetailController extends GetxController {
  GiftReceiverDetailController();

  RxBool loading = false.obs;

  // Add Gift Request
  Future<void> addGiftRequest(GiftGiver giftGiver) async {
    Get.find<GiftController>().updateGift(giftGiver);
    loading.value = true;

    try {
      await Get.find<GiftReceiverController>().addGiftRequestAndNotification(giftGiver);


      // Updating LocalUserInfo
      LocalUser? currentUseInfo = Get.find<AuthController>()
          .currentUserInfo
          .value
          .maybeWhen(data: (userInfo) => userInfo, orElse: () => null);
          
      if (currentUseInfo != null) {
        currentUseInfo = currentUseInfo.copyWith(hasGiftAskRequest: true, requestedGiftId: giftGiver.id!);
      }
      Get.find<AuthController>().updateLocalUser(currentUseInfo!);

      loading.value = false;
    } catch (e) {
      loading.value = false;
      await Get.find<GiftReceiverController>()
          .showSuccessOrErrorMessage(false, 'Gift Request Error', '', 'Something went wrong');
    }
  }
}

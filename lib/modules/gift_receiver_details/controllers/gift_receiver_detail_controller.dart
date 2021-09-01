import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/modules/gift_receiver_details/services/gift_receiver_detail_service.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:get/get.dart';

class GiftReceiverDetailController extends GetxController {
  GiftReceiverDetailController(this.giftReceiverDetailService);

  GiftReceiverDetailService giftReceiverDetailService;

  RxBool loading = false.obs;

  RxString comment = ''.obs;

  Future<void> addGiftRequest(GiftGiver giftGiver) async {
    final LocalUser? currentUser =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

    if (currentUser != null) {
      final GiftRequest giftReceiver = GiftRequest(
        comment: comment.value,
        gift: giftGiver,
        requester: currentUser,
        createdAt: DateTime.now(),
      );

      try {
        await giftReceiverDetailService.add(giftReceiver);
      } catch (e) {
        await MySnackbar.showErrorSnackbar('Request could not be added');
      }
    } else {
      await MyBottomSheet.showErrorBottomSheet('No user data found. Try logging in again');
    }
  }
}

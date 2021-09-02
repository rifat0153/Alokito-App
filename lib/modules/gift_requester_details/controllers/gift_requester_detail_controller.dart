import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_requester_details/services/gift_requester_detail_service.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:get/get.dart';

class GiftRequesterDetailController extends GetxController {
  GiftRequesterDetailController(this.giftReceiverDetailService);

  GiftRequesterDetailService giftReceiverDetailService;

  RxBool loading = false.obs;

  RxString comment = ''.obs;

  Future<void> addGiftRequest(Gift giftGiver) async {
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

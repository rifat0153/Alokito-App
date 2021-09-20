import 'package:get/get.dart';

import '../../../models/gift_giver/gift.dart';
import '../../../models/gift_request/gift_request.dart';
import '../../../models/user/local_user.dart';
import '../../../shared/my_bottomsheets.dart';
import '../../auth/controllers/auth_controller.dart';
import '../services/gift_requester_detail_service.dart';

class GiftRequesterDetailController extends GetxController {
  GiftRequesterDetailController(this.giftReceiverDetailService);

  GiftRequesterDetailService giftReceiverDetailService;

  RxBool loading = false.obs;

  RxString comment = ''.obs;

  //* Add Gift Request and Update LocalUser
  Future<void> addGiftRequest(Gift giftGiver) async {
    loading.value = true;

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

        // Update LocalUser after gift request has been added
        final LocalUser? localuser =
            Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

        // if (localuser != null) {
        //   final LocalUser updatedUser = localuser.copyWith(hasGiftGiverRequest: true, requestedGiftId: giftGiver.id!);

        //   await Get.find<AuthController>().updateLocalUser(updatedUser);
        // }
        loading.value = false;
      } catch (e) {
        loading.value = false;

        await MySnackbar.showErrorSnackbar('Request could not be added');
      }
    } else {
      loading.value = false;

      await MyBottomSheet.showErrorBottomSheet('No user data found. Try logging in again');
    }
  }
}

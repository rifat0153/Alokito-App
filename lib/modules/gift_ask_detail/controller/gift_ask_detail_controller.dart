import 'package:get/get.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/gift_ask_request.dart/gift_ask_request.dart';
import '../../../models/user/local_user.dart';
import '../../../shared/my_bottomsheets.dart';
import '../../auth/controllers/auth_controller.dart';
import '../service/gift_ask_detail_service.dart';

class GiftAskDetailController extends GetxController {
  GiftAskDetailController(this.giftAskDetailService);

  GiftAskDetailService giftAskDetailService;

  RxBool loading = false.obs;

  RxString comment = ''.obs;

  //* Add GiftAsk Request and Update LocalUser
  Future<void> addGiftAskRequest(GiftAsk giftAsk) async {
    loading.value = true;

    final LocalUser? currentUser =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

    if (currentUser != null) {
      final GiftAskRequest giftAskRequest = GiftAskRequest(
        comment: comment.value,
        giftAsk: giftAsk,
        giver: currentUser,
        createdAt: DateTime.now(),
      );

      try {
        loading.value = true;

        await giftAskDetailService.add(giftAskRequest);

        // Update LocalUser after giftAsk request has been added
        final LocalUser? localuser =
            Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

        if (localuser != null) {
          final LocalUser updatedUser =
              localuser.copyWith(hasGiftAskRequest: true, acceptedGiftId: giftAsk.id!);

          await Get.find<AuthController>().updateLocalUser(updatedUser);
        }
        loading.value = false;
      } catch (e) {
        loading.value = false;

        await MyBottomSheet.showErrorBottomSheet('Request could not be added');
      }
    } else {
      loading.value = false;

      await MyBottomSheet.showErrorBottomSheet('No user data found. Try logging in again');
    }
  }

  // * Delete GiftRequesta and update local user
  Future<void> canceledByRequester({GiftAskRequest? giftRequest, GiftAsk? giftAsk}) async {
    try {
      await giftAskDetailService.remove(
        status: 'canceledByRequester',
        giftAskId: giftAsk!.id,
        giverId:
            Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user.id, orElse: () => ''),
      );

      final LocalUser? currentUser =
          Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

      await Get.find<AuthController>().updateLocalUser(currentUser!.copyWith(
        requestedGiftId: '',
        hasGiftGiverRequest: false,
      ));
    } catch (e) {
      await MySnackbar.showErrorSnackbar(e.toString());
    }
  }
}

import '../../../models/gift_ask/gift_ask_giver.dart';
import '../../../models/my_enums.dart';
import '../../../models/notification/notification.dart';
import '../../../models/user/local_user.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift_ask/controllers/gift_ask_controller.dart';
import '../service/gift_ask_giver_service.dart';
import '../../notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uuid/uuid.dart';
import 'package:get/get.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../shared/success_error_sheet.dart';

class GiftAskGiverController extends GetxController {
  GiftAskGiverService giftAskGiverService = GiftAskGiverService(FirebaseFirestore.instance);

  Future<GiftAskGiver> getGift(String id) async {
    print('GiftAskGiverController: getGiftAskGiver call made');
    GiftAskGiver doc = await giftAskGiverService.getGiftAskGiver(id: id);

    return doc;
  }

  //* Update GiftAskGiver to Completed and Delete GiftASk from list
  Future<void> changeGiftAskGiverAndDeleteGiftAsk(GiftAskGiver updatedGiftAskGiver) async {
    await giftAskGiverService.updateGiftAskGiver(updatedGiftAskGiver);

  }

  //* Change GiftAskGiver status
  Future<void> changeGiftAskGiverStatus(GiftAskGiver giftAskGiver, GiftAskStatus giftAskStatus) async {
    var updatedGiftAskGiver = giftAskGiver.copyWith(giftAskStatus: giftAskStatus);

    await giftAskGiverService.updateGiftAskGiver(updatedGiftAskGiver);
  }

  // Accept GiftAsk Request
  Future<void> acceptGiftAskRequest(GiftAsk giftAsk) async {
    LocalUser currentUser = Get.find<AuthController>().currentUser.value;

    GiftAskGiver giftAskGiver = GiftAskGiver(
      id: '${currentUser.id}.${giftAsk.id}',
      giftAskStatus: GiftAskStatus.requestPending,
      giver: currentUser,
      requester: giftAsk.user,
    );

    try {
      await giftAskGiverService.add(giftAskGiver);

      // await Get.find<AuthController>()
      //     .authService
      //     .updateLocalUser(currentUser.copyWith(acceptedGiftId: giftAsk.id ?? '', hasGiftAskRequest: true));

    

      // Updating LocalUserInfo
      LocalUser? currentUseInfo = Get.find<AuthController>()
          .currentUserInfo
          .value
          .maybeWhen(data: (userInfo) => userInfo, orElse: () => null);

      if (currentUseInfo != null) {
        currentUseInfo = currentUseInfo.copyWith(hasGiftAskRequest: true, acceptedGiftId: giftAsk.id ?? '');
      }
    } on FirebaseException {
      ShowSuccessOrError.showSuccessOrErrorBottomSheet(false, '', 'Something went wrong');
    }
  }

  // Add notification for both requester and giver
  Future<void> addNotification({
    String? textForRequester,
    String? textForGiver,
    required GiftAskGiver giftAskGiver,
  }) async {
    final String uuid = const Uuid().v4();



  }
}

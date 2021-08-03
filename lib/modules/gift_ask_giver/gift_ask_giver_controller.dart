import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask_giver/gift_ask_giver_service.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uuid/uuid.dart';
import 'package:get/get.dart';

import '../../models/gift_ask/gift_ask.dart';
import '../../shared/success_error_sheet.dart';

class GiftAskGiverController extends GetxController {
  GiftAskGiverService giftAskGiverService = GiftAskGiverService(FirebaseFirestore.instance);

  Future<GiftAskGiver> getGift(String id) async {
    print('GiftAskGiverController: getGiftAskGiver call made');
    GiftAskGiver doc = await giftAskGiverService.getGiftAskGiver(id: id);

    return doc;
  }

  // Change GiftAskGiver status
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
      giftAsk: giftAsk,
      giver: currentUser,
      requester: giftAsk.requester,
      createdAt: Timestamp.now(),
    );

    try {
      await giftAskGiverService.add(giftAskGiver);

      await Get.find<AuthController>().authService.updateLocalUser(currentUser.copyWith(
            acceptedGiftId: giftAsk.id ?? '',
          ));

      await addNotification(
        giftAskGiver: giftAskGiver,
        textForRequester: 'Gift Request accepted by ${giftAskGiver.giver.userName}',
      );
      await addNotification(
        giftAskGiver: giftAskGiver,
        textForGiver: 'You confirmed request of ${giftAskGiver.giftAsk.requester.userName}',
      );
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
    final NotificationController notificationController = Get.find();

    if (textForRequester != null) {
      MyNotification notificationForRequester = MyNotification.data(
        id: uuid,
        text: textForRequester,
        notificationType: NotificationType.giftAsk,
        releatedDocId: giftAskGiver.id ?? '',
        createdAt: Timestamp.now(),
      );

      await notificationController.notificationService
          .add(notification: notificationForRequester, userId: giftAskGiver.giftAsk.requester.id ?? '');
    }
    if (textForGiver != null) {
      MyNotification notificationForGiver = MyNotification.data(
        id: uuid,
        text: textForGiver,
        notificationType: NotificationType.giftAsk,
        releatedDocId: giftAskGiver.id ?? '',
        createdAt: Timestamp.now(),
      );

      await notificationController.notificationService
          .add(notification: notificationForGiver, userId: giftAskGiver.giver.id ?? '');
    }
  }
}

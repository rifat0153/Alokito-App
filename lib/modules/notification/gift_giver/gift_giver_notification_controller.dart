import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GiftGiverNotificationController extends GetxController {
  GiftGiverNotificationController();

  Future<void> cancelGiftRequestByRequester(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().cancelGiftRequest(giftReceiver, GiftRequestStatus.requestCanceledByRequester);
  }

  Future<void> confirmGift(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().confirmGiftRequest(giftReceiver);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    MyNotification notificationRequester = MyNotification.data(
      id: giftReceiver.requester.id ?? '',
      text: 'Gift request $giftType has been confirmed by ${giftReceiver.giftGiver.userName}',
      notificationType: NotificationType.giftGiver,
      releatedDocId: giftReceiver.requester.id ?? '',
      createdAt: Timestamp.now(),
    );

    MyNotification notificationGiver = notificationRequester.copyWith(
      text: 'You confirmed gift $giftType for ${giftReceiver.requester.userName}',
    );

    await Get.find<NotificationController>().addNotification(userId: giftReceiver.requester.id ?? '', notification: notificationRequester);
    await Get.find<NotificationController>().addNotification(userId: giftReceiver.giftGiver.uid, notification: notificationGiver);
  }
}

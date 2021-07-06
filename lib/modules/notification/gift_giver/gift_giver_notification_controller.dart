import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GiftGiverNotificationController extends GetxController {
  GiftGiverNotificationController();

  Future<void> confirmGift(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().confirmGiftRequest(giftReceiver);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    MyNotification notificationRequester = MyNotification.data(
      text: 'Gift request $giftType has been confirmed by ${giftReceiver.giftGiver.userName}',
      notificationType: NotificationType.giftGiver,
      releatedDocId: '',
      createdAt: Timestamp.now(),
    );

    // Get.find<NotificationController>().addNotification(userId: userId, notification: notification);
  }
}

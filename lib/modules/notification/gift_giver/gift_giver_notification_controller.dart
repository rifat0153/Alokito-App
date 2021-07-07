import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GiftGiverNotificationController extends GetxController {
  GiftGiverNotificationController();

  Future<void> thanksGiftRequester(GiftReceiver giftReceiver, String message) async {}

  // MARKED AS DONE BY GIVER
  Future<void> doneGiftRequestByGiver(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().cancelGiftRequest(giftReceiver, GiftRequestStatus.requestDelivered);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    await addNotificationRequesterAndGiver(
        giftReceiver,
        'Delivered: Gift request $giftType from ${giftReceiver.giftGiver.userName} has been delivered to you',
        'Delivered: $giftType delivered to ${giftReceiver.requester.userName}');
  }

  // AFTER CONFIRMATION BY GIVER ACCEPTED BY REUQESTER, makes no sense IK, BUT its the app was made :3
  Future<void> aceeptGiftRequestByRequester(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().cancelGiftRequest(giftReceiver, GiftRequestStatus.requestAccepted);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    await addNotificationRequesterAndGiver(
      giftReceiver,
      'Gift request $giftType from ${giftReceiver.giftGiver.userName} has been accepted by you',
      '$giftType accepted by ${giftReceiver.requester.userName}',
    );
  }

  // CANCELED BY REQUESTER
  Future<void> cancelGiftRequestByRequester(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().cancelGiftRequest(giftReceiver, GiftRequestStatus.requestCanceledByRequester);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);
    await addNotificationRequesterAndGiver(
      giftReceiver,
      'Gift request $giftType from ${giftReceiver.giftGiver.userName} has been canceled by you',
      '$giftType canceled by ${giftReceiver.requester.userName}',
    );
  }

  // CONFIRMED BY GIVER
  Future<void> confirmGift(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().confirmGiftRequest(giftReceiver);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);
    await addNotificationRequesterAndGiver(
      giftReceiver,
      'Gift request $giftType has been confirmed by ${giftReceiver.giftGiver.userName}',
      'You confirmed gift $giftType for ${giftReceiver.requester.userName}',
    );
  }

  Future<void> addNotificationRequesterAndGiver(GiftReceiver giftReceiver, String requesterText, String giverText) async {
    MyNotification notificationRequester = MyNotification.data(
      id: giftReceiver.requester.id ?? '',
      text: requesterText,
      notificationType: NotificationType.giftGiver,
      releatedDocId: giftReceiver.requester.id ?? '',
      createdAt: Timestamp.now(),
    );

    MyNotification notificationGiver = notificationRequester.copyWith(
      text: giverText,
    );

    await Get.find<NotificationController>().addNotification(userId: giftReceiver.requester.id ?? '', notification: notificationRequester);
    await Get.find<NotificationController>().addNotification(userId: giftReceiver.giftGiver.uid, notification: notificationGiver);
  }
}

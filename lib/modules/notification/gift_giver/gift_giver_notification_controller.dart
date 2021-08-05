import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftGiverNotificationController extends GetxController {
  GiftGiverNotificationController();

  RxString messageForRequester = ''.obs;
  RxString messageForGiver = ''.obs;
  RxInt requesterRating = 0.obs;
  RxInt giverRating = 0.obs;

  //Message for Giver and Rating
  Future<void> messageForGiverAndRating(GiftReceiver giftReceiver) async {
    print('IN adding giver message');

    MyNotification giverNotification = MyNotification.data(
        id: '',
        text: messageForGiver.value,
        notificationType: NotificationType.text,
        releatedDocId: giftReceiver.giftGiver.uid,
        createdAt: Timestamp.now());

    // * Changin Gift Receiver Status 
    await Get.find<GiftReceiverController>()
        .changeMessageSentStatus(giftReceiver: giftReceiver, isRequester: true);

    //* Adding Notification for Gift Giver
    await Get.find<NotificationController>()
        .addNotification(userId: giftReceiver.giftGiver.uid, notification: giverNotification);

    // TODO delete GIft from after delivery

    // TODO user has no gift Request 

    //***  THIS CALL Used to change user it has been fixed for now ***
    await Get.find<AuthController>().authService.updateUserRating(giftReceiver.giftGiver.uid, giverRating.value);
  }

  //* Message for Requester and Rating
  Future<void> messageForRequesterAndRating(GiftReceiver giftReceiver) async {
    MyNotification requesterNotification = MyNotification.data(
        id: '',
        text: messageForRequester.value,
        notificationType: NotificationType.text,
        releatedDocId: giftReceiver.requester.id!,
        createdAt: Timestamp.now());

    await Get.find<GiftReceiverController>()
        .changeMessageSentStatus(giftReceiver: giftReceiver, isRequester: false);

    await Get.find<NotificationController>()
        .addNotification(userId: giftReceiver.requester.id ?? '', notification: requesterNotification);

    //***  THIS CALL Used to change user it has been fixed for now ***
    await Get.find<AuthController>()
        .authService
        .updateUserRating(giftReceiver.requester.id ?? '', requesterRating.value);
  }

  //* MARKED AS DONE BY GIVER
  Future<void> doneGiftRequestByGiver(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().cancelGiftRequest(giftReceiver, const GiftReceiverStatus.delivered());

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    await addNotificationRequesterAndGiver(
        giftReceiver,
        'Delivered: Gift request $giftType from ${giftReceiver.giftGiver.userName} has been delivered to you',
        'Delivered: $giftType delivered to ${giftReceiver.requester.userName}');
  }

  //* AFTER CONFIRMATION BY GIVER ACCEPTED BY REUQESTER, makes no sense IK, BUT its the app was made :3
  Future<void> aceeptGiftRequestByRequester(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().cancelGiftRequest(giftReceiver, const GiftReceiverStatus.accepted());

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    await addNotificationRequesterAndGiver(
      giftReceiver,
      'Gift request $giftType from ${giftReceiver.giftGiver.userName} has been accepted by you',
      '$giftType accepted by ${giftReceiver.requester.userName}',
    );
  }

  //* CANCELED BY REQUESTER
  Future<void> cancelGiftRequestByRequester(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>()
        .cancelGiftRequest(giftReceiver, const GiftReceiverStatus.canceledByRequester());

    await Get.find<AuthController>().userDoesNotHaveGiftReuqest();

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);

    await addNotificationRequesterAndGiver(
      giftReceiver,
      'Gift request $giftType from ${giftReceiver.giftGiver.userName} has been canceled by you',
      '$giftType canceled by ${giftReceiver.requester.userName}',
    );
  }

  //* CONFIRMED BY GIVER
  Future<void> confirmGift(GiftReceiver giftReceiver) async {
    await Get.find<GiftReceiverController>().confirmGiftRequest(giftReceiver);

    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);
    await addNotificationRequesterAndGiver(
      giftReceiver,
      'Gift request $giftType has been confirmed by ${giftReceiver.giftGiver.userName}',
      'You confirmed gift $giftType for ${giftReceiver.requester.userName}',
    );
  }


  // Adds notification for both giver and requester
  Future<void> addNotificationRequesterAndGiver(
      GiftReceiver giftReceiver, String requesterText, String giverText) async {
    MyNotification notificationRequester = MyNotification.data(
      id: giftReceiver.requester.id ?? '',
      text: requesterText,
      notificationType: NotificationType.giftGiver,
      releatedDocId: giftReceiver.id ?? '',
      createdAt: Timestamp.now(),
    );

    MyNotification notificationGiver = notificationRequester.copyWith(
      text: giverText,
    );

    await Get.find<NotificationController>()
        .addNotification(userId: giftReceiver.requester.id ?? '', notification: notificationRequester);
    await Get.find<NotificationController>()
        .addNotification(userId: giftReceiver.giftGiver.uid, notification: notificationGiver);
  }
}

import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask_giver/controller/gift_ask_giver_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftAskNotificationController extends GetxController {
  GiftAskNotificationController();

  RxString messageForRequester = ''.obs;
  RxString messageForGiver = ''.obs;
  RxInt requesterRating = 0.obs;
  RxInt giverRating = 0.obs;

  //* Message for Giver and Rating
  Future<void> messageForGiverAndRating(GiftAskGiver giftAskGiver) async {
    print('IN adding giver message');

    MyNotification giverNotification = MyNotification.data(
        id: '',
        text: messageForGiver.value,
        notificationType: NotificationType.text,
        releatedDocId: giftAskGiver.giftAsk.id!,
        createdAt: Timestamp.now());

    //* changeGiftASkGiver to completed and delete the GiftASk request
    final updatedGiftAskGiver = giftAskGiver.copyWith(messageForGiverrSent: true);
    await Get.find<GiftAskGiverController>().changeGiftAskGiverAndDeleteGiftAsk(updatedGiftAskGiver);

    // *update requester userinfo to no request
    final updatedUser = giftAskGiver.requester.copyWith(hasGiftAskRequest: false);
    await Get.find<AuthController>().authService.updateLocalUser(updatedUser);

    await Get.find<NotificationController>()
        .addNotification(userId: giftAskGiver.giver.id ?? '', notification: giverNotification);

    //***  THIS CALL Used to change user it has been fixed for now ***
    await Get.find<AuthController>().authService.updateUserRating(giftAskGiver.giver.id!, giverRating.value);
  }

  //*Message for Requester and Rating
  Future<void> messageForRequesterAndRating(GiftAskGiver giftAskGiver) async {
    MyNotification requesterNotification = MyNotification.data(
        id: '',
        text: messageForRequester.value,
        notificationType: NotificationType.text,
        releatedDocId: giftAskGiver.id!,
        createdAt: Timestamp.now());

    //* changeGiftASkGiver to completed and delete the GiftASk request
    final updatedGiftAskGiver = giftAskGiver.copyWith(messageForRequesterSent: true);
    await Get.find<GiftAskGiverController>().changeGiftAskGiverAndDeleteGiftAsk(updatedGiftAskGiver);

    // *update giver userinfo to no request
    final updatedUser = giftAskGiver.giver.copyWith(hasGiftAskRequest: false);
    await Get.find<AuthController>().authService.updateLocalUser(updatedUser);

    await Get.find<NotificationController>()
        .addNotification(userId: giftAskGiver.requester.id ?? '', notification: requesterNotification);

    //***  THIS CALL Used to change user it has been fixed for now ***
    await Get.find<AuthController>().authService.updateUserRating(giftAskGiver.requester.id ?? '', requesterRating.value);
  }

  //* MARKED AS DONE BY GIVER
  Future<void> doneGiftRequestByGiver(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>().changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestDelivered);

    String giftType = convertGiftAskType(giftAskType: giftAskGiver.giftAsk.giftAskType);

    await addNotificationRequesterAndGiver(
        giftAskGiver,
        'Delivered: Gift request $giftType from ${giftAskGiver.giver.userName} has been delivered to you',
        'Delivered: $giftType delivered to ${giftAskGiver.requester.userName}');
  }

  //* AFTER CONFIRMATION BY GIVER, Gift ACCEPTED BY REUQESTER, makes no sense IK, BUT its how app was made :3
  Future<void> aceeptGiftRequestByRequester(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>().changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestAccepted);

    String giftType = convertGiftAskType(giftAskType: giftAskGiver.giftAsk.giftAskType);

    await addNotificationRequesterAndGiver(
      giftAskGiver,
      'Gift request $giftType accepted by you',
      'Gift request $giftType has been accepted by ${giftAskGiver.requester.userName}',
    );
  }

  //* CANCELED BY REQUESTER
  Future<void> cancelGiftRequestByRequester(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>()
        .changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestCanceledByRequester);

    await Get.find<AuthController>().userDoesNotHaveGiftReuqest();

    String giftType = convertGiftAskType(giftAskType: giftAskGiver.giftAsk.giftAskType);

    await addNotificationRequesterAndGiver(
      giftAskGiver,
      'Gift request $giftType has been canceled by you',
      'Gift Request type $giftType from ${giftAskGiver.requester.userName} was canceled',
    );
  }

  //* CONFIRMED BY GIVER
  Future<void> confirmGift(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>().changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestConfirmed);

    String giftType = convertGiftAskType(giftAskType: giftAskGiver.giftAsk.giftAskType);

    await addNotificationRequesterAndGiver(
      giftAskGiver,
      'Gift request $giftType has been confirmed by ${giftAskGiver.giver.userName}',
      'You confirmed gift request $giftType for ${giftAskGiver.requester.userName}',
    );
  }

  Future<void> addNotificationRequesterAndGiver(
    GiftAskGiver giftAskGiver,
    String requesterText,
    String giverText,
  ) async {
    MyNotification notificationRequester = MyNotification.data(
      id: giftAskGiver.requester.id ?? '',
      text: requesterText,
      notificationType: NotificationType.giftAsk,
      releatedDocId: giftAskGiver.id ?? '',
      createdAt: Timestamp.now(),
    );

    MyNotification notificationGiver = notificationRequester.copyWith(
      text: giverText,
    );

    await Get.find<NotificationController>()
        .addNotification(userId: giftAskGiver.requester.id ?? '', notification: notificationRequester);
    await Get.find<NotificationController>()
        .addNotification(userId: giftAskGiver.giver.id!, notification: notificationGiver);
  }
}

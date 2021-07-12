import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_service.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../models/notification/notification.dart';

class GiftReceiverController extends GetxController {
  final GiftReceiverService giftReceiverService =
      GiftReceiverService(Geoflutterfire(), FirebaseFirestore.instance, FirebaseAuth.instance);

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);

  Future<GiftReceiver?> getGift(String id) async {
    print('GiftReceiverController: getGift call made');
    GiftReceiver? doc = await giftReceiverService.getGiftRequest(id: id);

    return doc;
  }

  Future<void> changeMessageSentStatus({
    required GiftReceiver giftReceiver,
    required bool isRequester,
  }) async {
    isRequester
        ? await giftReceiverService.updateGiftReceiver(
            giftReceiver: giftReceiver.copyWith(messageForGiverrSent: true))
        : await giftReceiverService.updateGiftReceiver(
            giftReceiver: giftReceiver.copyWith(messageForRequesterSent: true));
  }

  Future<void> cancelGiftRequest(GiftReceiver giftReceiver, GiftRequestStatus giftRequestStatus) async {
    await giftReceiverService.updateGiftReceiver(
        giftReceiver: giftReceiver.copyWith(giftRequestStatus: giftRequestStatus));
  }

  Future<void> confirmGiftRequest(GiftReceiver giftReceiver) async {
    await giftReceiverService.updateGiftReceiver(
        giftReceiver: giftReceiver.copyWith(giftRequestStatus: GiftRequestStatus.requestConfirmed));
  }

  Future<void> addGiftRequestAndNotification(GiftGiver giftGiver) async {
    var found = await giftReceiverService.findGift(id: Get.find<AuthController>().currentUser.value.id ?? '');

    if (found) {
      await showSuccessOrErrorMessage(false, 'Request Already Found', '', 'One request per user at a time');
      return;
    }

    GiftReceiver giftReceiver = GiftReceiver(
      id: Get.find<AuthController>().currentUser.value.id,
      giftRequestStatus: GiftRequestStatus.requestPending,
      comment: requesterMessage.value,
      giftGiver: giftGiver,
      requester: Get.find<AuthController>().currentUser.value,
      createdAt: Timestamp.now(),
    );

    var result = await giftReceiverService.addGiftRequest(giftReceiver: giftReceiver);
    if (result) {
      await Get.find<AuthController>().userHasGiftReuqest(giftGiver.id!);
      await addNotificationForGiftRequest(giftReceiver);
    }

    await showSuccessOrErrorMessage(result, 'Gift Add', 'Request Added', 'Something went wrong');
  }

  Future<void> addNotificationForGiftRequest(GiftReceiver giftReceiver) async {
    Uuid uuid = const Uuid();
    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);
    String requesterId = giftReceiver.requester.id!;
    String giverId = giftReceiver.giftGiver.uid;
    String requesterName = giftReceiver.requester.userName;

    MyNotification requesterNotification = MyNotification.data(
        id: '${uuid.v4()}.${giftReceiver.id}',
        text: 'Gift Request for $giftType was added',
        notificationType: NotificationType.giftGiver,
        releatedDocId: giftReceiver.id ?? '',
        createdAt: Timestamp.now());

    MyNotification giverNotification =
        requesterNotification.copyWith(text: 'Your gift offer $giftType is requested by $requesterName');

    await Get.find<NotificationController>()
        .addNotification(userId: requesterId, notification: requesterNotification);
    await Get.find<NotificationController>()
        .addNotification(userId: giverId, notification: giverNotification);

    await Get.find<AuthController>().userHasNotification(giverId);
    await Get.find<AuthController>().userHasNotification(requesterId);
  }

  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}

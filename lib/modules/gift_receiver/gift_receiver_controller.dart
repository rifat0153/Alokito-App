import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
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
  final GiftReceiverService giftRequestService =
      GiftReceiverService(Geoflutterfire(), FirebaseFirestore.instance, FirebaseAuth.instance);

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);

  Future<void> addGiftRequestAndNotification(GiftGiver giftGiver) async {
    var found = await giftRequestService.findGift(id: Get.find<AuthController>().currentUser.value.id ?? '');

    if (found) {
      await showSuccessOrErrorMessage(false, 'Request Already Found', '', 'One request per user at a time');
      return;
    }

    GiftReceiver giftReceiver = GiftReceiver(
      id: Get.find<AuthController>().currentUser.value.id,
      giftRequestStatus: GiftRequestStatus.requestPending,
      giftGiver: giftGiver,
      requester: Get.find<AuthController>().currentUser.value,
      createdAt: Timestamp.now(),
    );

    var result = await giftRequestService.addGiftRequest(giftReceiver: giftReceiver);
    await showSuccessOrErrorMessage(result, 'Gift Add', 'Request Added', 'Something went wrong');
  }

  Future<void> addNotification(GiftReceiver giftReceiver, GiftGiver giftGiver) async {
    Uuid uuid = const Uuid();
    String giftType = convertGiftType(giftReceiver.giftGiver.giftType);
    String requesterId = Get.find<AuthController>().currentUser.value.id ?? '';
    String giverId = giftGiver.uid;

    MyNotification requesterNotification = MyNotification.data(
        id: '${uuid.v4()}.${giftReceiver.id}',
        text: 'Gift Request for $giftType was added',
        notificationType: NotificationType.giftGiver,
        releatedDocId: giftReceiver.id ?? '',
        createdAt: Timestamp.now());

    MyNotification giverNotification = requesterNotification.maybeWhen(data: (value) => value , orElse: () => requesterNotification)  ;

    await Get.find<NotificationController>().addNotification(userId: requesterId, notification: requesterNotification);
    await Get.find<NotificationController>().addNotification(userId: requesterId, notification: requesterNotification);
  }

  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}

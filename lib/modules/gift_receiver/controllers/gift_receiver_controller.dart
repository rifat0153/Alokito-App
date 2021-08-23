import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_exception.dart';
import 'package:alokito_new/modules/gift_receiver/services/gift_receiver_service.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../../models/notification/notification.dart';

class GiftReceiverController extends GetxController {
  final GiftReceiverService giftReceiverService =
      GiftReceiverService(Geoflutterfire(), FirebaseFirestore.instance);

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);

  Future<GiftReceiverNotificationUnion> getGift(String id) async {
    try {
      print('GiftReceiverController: getGift call made');
      GiftReceiverNotificationUnion docUnion = await giftReceiverService.getGiftRequest(id: id);

      return docUnion;
    } catch (e) {
      return GiftReceiverNotificationUnion.error(e);
    }
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

  Future<void> cancelGiftRequest(GiftReceiver giftReceiver, GiftReceiverStatus giftReceiverStatus) async {
    await giftReceiverService.updateGiftReceiver(
        giftReceiver: giftReceiver.copyWith(giftReceiverStatus: giftReceiverStatus));
  }

  Future<void> confirmGiftRequest(GiftReceiver giftReceiver) async {
    await giftReceiverService.updateGiftReceiver(
        giftReceiver: giftReceiver.copyWith(giftReceiverStatus: const GiftReceiverStatus.confirmed()));
  }

  // * Add Gift Reuqest
  Future<void> addGiftRequestAndNotification(GiftGiver giftGiver) async {
    var found = Get.find<AuthController>().currentUser.value.hasGiftGiverRequest;

    if (found) {
      await showSuccessOrErrorMessage(false, 'Request Already Found', '', 'One request per user at a time');
      return;
    }
    String uuid = const Uuid().v4();
    String docId = '${Get.find<AuthController>().currentUser.value.id}.${giftGiver.id}';

    GiftReceiver giftReceiver = GiftReceiver(
      id: docId,
      giftReceiverStatus: const GiftReceiverStatus.pending(),
      comment: requesterMessage.value,
      giftGiver: giftGiver,
      requester: Get.find<AuthController>().currentUser.value,
      createdAt: Timestamp.now(),
    );

    var result = await giftReceiverService.addGiftRequest(giftReceiver: giftReceiver);
    if (result) {
      await Get.find<AuthController>().getUserInfoAndSetCurrentUser();
    }

    await showSuccessOrErrorMessage(result, 'Gift Add', 'Request Added', 'Something went wrong');
  }



  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}

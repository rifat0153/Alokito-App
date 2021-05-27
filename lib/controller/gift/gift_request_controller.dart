import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_request/gift_request_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftRequestController extends GetxController {
  final GiftRequestService giftRequestService = GiftRequestService();

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);

  //Delete giftRequest\
  Future<bool> deleleGiftRequest({required GiftGiver giftGiver}) async {
    var result =
        await giftRequestService.deleteGiftRequest(giftGiver: giftGiver);

    requestExists.value = false;
    return result;
  }

  //Find Exising gift requests
  Future<bool> findGiftReqeust({required GiftGiver giftGiver}) async {
    print('In controller findign gift');
    var result = await giftRequestService.findGift(giftGiver: giftGiver);
    if (result) {
      requestExists.value = true;
    } else {
      requestExists.value = false;
    }
    return result;
  }

  void addGiftRequest({required GiftGiver giftGiver}) async {
    loading.value = true;
    var exists = await giftRequestService.findGift(giftGiver: giftGiver);

    if (exists) {
      Get.snackbar('Gift Request', 'gift request exists',
          backgroundColor: Colors.yellow.withOpacity(0.5));
      loading.value = false;
      return;
    }

    var result = await giftRequestService.addGiftRequest(giftGiver: giftGiver);
    if (result) {
      Get.snackbar('Gift Request', 'gift request succesful',
          backgroundColor: Colors.green.withOpacity(0.5));
      loading.value = false;
      requestExists.value = true;
    } else {
      Get.snackbar('Gift Request', 'gift request failure',
          backgroundColor: Colors.red.withOpacity(0.5));
      loading.value = false;
    }

    showDialog.value = false;
  }
}

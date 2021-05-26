import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftRequestController extends GetxController {
  final GiftGiverService giftService = GiftGiverService();

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);

  //GIFT RECIEVER
  void requestGift({required GiftGiver giftGiver}) async {
    print('Gift Requested');
    print(giftGiver);
    loading.value = true;
    var result = await giftService.addGiftRequest(giftGiver: giftGiver);
    if (result) {
      Get.snackbar('Gift Request', 'gift request succesful',
          backgroundColor: Colors.green.withOpacity(0.5));
      loading.value = false;
    } else {
      Get.snackbar('Gift Request', 'gift request failure',
          backgroundColor: Colors.red.withOpacity(0.5));
      loading.value = false;
    }

    showDialog.value = false;
  }
}

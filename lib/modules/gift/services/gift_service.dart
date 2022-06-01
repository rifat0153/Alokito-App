import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../../../core/image/image_service.dart';
import '../../../models/gift/gift.dart';
import '../../../shared/config.dart';
import '../../../shared/widget/my_bottomsheets.dart';

abstract class BaseGiftGiverService {
  Future<void> addGift({required Gift gift, required File imageFile});
}

class GiftService extends GetConnect implements BaseGiftGiverService {
  GiftService();

  @override
  Future<void> addGift({required Gift gift, required File imageFile}) async {
    String giftImageUrl = '';

    try {
      giftImageUrl = await ImageService.uploadImageToFirebaseAndGetUrl(imageFile, 'users/${gift.user?.uid}/gift');

      gift = gift.copyWith(imageUrl: giftImageUrl);
    } catch (e) {
      await MySnackbar.showErrorSnackbar('Gift image Upload Fail');
      return;
    }

    try {
      // * Add Gift to DB
      final Response response = await post(
        '${MyConfig.baseUrl}/gift/store',
        giftToJson(gift),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MySnackbar.showSuccessSnackbar('Gift Added');
      } else {
        await MySnackbar.showErrorSnackbar('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e) {
      await MySnackbar.showErrorSnackbar('$e: Something went wrong');
    }
  }
}

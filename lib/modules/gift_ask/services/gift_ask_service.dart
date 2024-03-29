import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../../../core/image/image_service.dart';
import '../../../models/gift_ask/gift_ask.dart';
import '../../../shared/config.dart';
import '../../../shared/widget/my_bottomsheets.dart';

abstract class BaseGiftAskService {
  Future<void> addGift({required GiftAsk giftAsk, required String userId, required File imageFile});

  // Future<void> findGiftById(String id);

  // Future<void> deleteGiftAsk(GiftAsk giftAsk);
}

class GiftAskService extends GetConnect implements BaseGiftAskService {
  GiftAskService();

  @override
  Future<void> addGift({required GiftAsk giftAsk, required String userId, required File imageFile}) async {
    try {
      if (giftAsk.giftAskType == GiftAskType.medicine && imageFile.path.isNotEmpty) {
        final String prescriptionImageUrl = await ImageService.uploadImageToFirebaseAndGetUrl(imageFile, 'user/gift_ask');

        giftAsk = giftAsk.copyWith(imageUrl: prescriptionImageUrl);
      }

      print('GiftASk: ' + giftAsk.toJson().toString());

      final Response respose = await post(
        "${MyConfig.baseUrl}/gift_ask/store",
        giftAsk.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      print(respose);

      if (respose.statusCode == 200 || respose.statusCode == 201) {
        await MySnackbar.showSuccessSnackbar('Gift request complete');
      } else {
        await MySnackbar.showErrorSnackbar('An unexpected error occurred');
      }

      return;
    } on FirebaseException catch (_) {
      await MySnackbar.showErrorSnackbar('Image upload failed');
    } on IOException catch (_) {
      await MySnackbar.showErrorSnackbar('Could not connect to server. Please check your Internet');
    } on TimeoutException catch (_) {
      await MySnackbar.showErrorSnackbar('Could not connect to server. An unexpected error occurred');
    } catch (e) {
      print(e);

      await MySnackbar.showErrorSnackbar('An unexpected error occurred');
    }
  }

  // @override
  // Future<bool> findGiftById(String id) async {
  //   try {
  //     final docRef = await _firestore.collection('gift_ask').doc(id).get();

  //     return docRef.data() != null ? true : false;
  //   } on FirebaseException catch (e) {
  //     throw GiftAskException(message: 'GiftRequest finding error: ${e.message}');
  //   }
  // }

  // @override
  // Future<void> deleteGiftAsk(GiftAsk giftAsk) async {
  //   try {
  //     await _firestore.collection('gift_ask').doc(giftAsk.id).delete();
  //   } on FirebaseException catch (e) {
  //     throw GiftAskException(message: e.toString());
  //   } catch (e) {
  //     throw GiftAskException(message: e.toString());
  //   }
  // }
}

import 'dart:io';

import 'package:get/get.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../gift_ask_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class BaseGiftAskService {
  Future<bool> addGift({required GiftAsk giftAsk, required String userId, required File imageFile});

  Future<bool> findGiftById(String id);

  Future<void> deleteGiftAsk(GiftAsk giftAsk);
}

class GiftAskService extends GetConnect implements BaseGiftAskService  {
  GiftAskService(this._firestore, this._storage);

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  @override
  Future<bool> addGift({required GiftAsk giftAsk, required String userId, required File imageFile}) async {
    try {
      final docRef = _firestore.collection('gift_ask').doc(userId);
      giftAsk = giftAsk.copyWith(id: userId);

      await docRef.set(giftAsk.toJson());

      return true;
    } on FirebaseException catch (e) {
      throw GiftAskException(message: e.message);
    }
  }

  @override
  Future<bool> findGiftById(String id) async {
    try {
      var docRef = await _firestore.collection('gift_ask').doc(id).get();

      return docRef.data() != null ? true : false;
    } on FirebaseException catch (e) {
      throw GiftAskException(message: 'GiftRequest finding error: ${e.message}');
    }
  }

  @override
  Future<void> deleteGiftAsk(GiftAsk giftAsk) async {
    try {
      await _firestore.collection('gift_ask').doc(giftAsk.id).delete();
    } on FirebaseException catch (e) {
      throw GiftAskException(message: e.toString());
    } catch (e) {
      throw GiftAskException(message: e.toString());
    }
  }
}

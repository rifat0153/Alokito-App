import 'dart:io';

import '../../../models/gift_ask/gift_ask.dart';
import '../gift_ask_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

abstract class BaseGiftAskService {
  Future<bool> addGift({required GiftAsk giftAsk, required String userId});

  Future<String> uploadImageAndGetDownloadUrl(File file);

  Future<bool> findGiftById(String id);

  Future<void> delete(GiftAsk giftAsk);
}

class GiftAskService implements BaseGiftAskService {
  GiftAskService(this._firestore, this._storage);

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  @override
  Future<bool> addGift({required GiftAsk giftAsk, required String userId}) async {
    try {
      var docRef = _firestore.collection('gift_ask').doc(userId);
      giftAsk = giftAsk.copyWith(id: userId);

      await docRef.set(giftAsk.toJson());

      return true;
    } on FirebaseException catch (e) {
      throw GiftAskException(message: e.message);
    }
  }

  @override
  Future<String> uploadImageAndGetDownloadUrl(File file) async {
    var fileExtension = path.extension(file.path);
    var uuid = const Uuid().v4();
    var firebaseStorageRef = _storage.ref().child('gift_ask/images/$uuid$fileExtension');

    try {
      await firebaseStorageRef.putFile(file);
      String url = await firebaseStorageRef.getDownloadURL();

      return url;
    } on FirebaseException catch (e) {
      throw GiftAskException(message: 'Prescription Image upload error');
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
  Future<void> delete(GiftAsk giftAsk) async {
    try {
      await _firestore.collection('gift_ask').doc(giftAsk.id).delete();
    } on FirebaseException catch (e) {
      throw GiftAskException(message: e.toString());
    } catch (e) {
      throw GiftAskException(message: e.toString());
    }
  }
}

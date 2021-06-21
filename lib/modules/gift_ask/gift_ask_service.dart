import 'dart:io';

import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

abstract class BaseGiftAskService {
  Future<bool> addGift({required GiftAsk giftAsk});
  Future<String> uploadImageAndGetDownloadUrl(File file);
}

class GiftAskService implements BaseGiftAskService {
  GiftAskService(this._firestore, this._storage);

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  @override
  Future<bool> addGift({required GiftAsk giftAsk}) async {
    try {
      var docRef = _firestore.collection('gift_ask').doc();
      giftAsk = giftAsk.copyWith(id: docRef.id);
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
}
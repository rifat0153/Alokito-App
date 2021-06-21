import 'dart:io';

import 'package:alokito_new/models/gift_ask/gift_ask.dart';
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
  Future<bool> addGift({required GiftAsk giftAsk, File? imageFile}) async {
    String downloadUrl = '';

    

    return false;
  }

  @override
  Future<String> uploadImageAndGetDownloadUrl(File file) async {
    var fileExtension = path.extension(file.path);
    var uuid = const Uuid().v4();
    var firebaseStorageRef = _storage.ref().child('gifts/images/$uuid$fileExtension');

    try {
      await firebaseStorageRef.putFile(file);
      String url = await firebaseStorageRef.getDownloadURL();

      return url;
    } on FirebaseException catch (e) {
      return '';
    }
  }
}

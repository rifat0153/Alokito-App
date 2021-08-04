import 'dart:io';

import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

abstract class BaseGiftAskService {
  Future<bool> addGift({required GiftAsk giftAsk, required String userId});

  Future<String> uploadImageAndGetDownloadUrl(File file);

  Future<bool> findGiftById(String id);

  Stream<GiftAskListUnion> giftAskRequestStream({
    required double latitude,
    required double longitude,
    required double searchRadius,
    required String userId,
  });

  Future<void> delete(GiftAsk giftAsk);
}

class GiftAskService implements BaseGiftAskService {
  GiftAskService(this._firestore, this._storage, this._geo);

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final Geoflutterfire _geo;

  @override
  Stream<GiftAskListUnion> giftAskRequestStream({
    required double latitude,
    required double longitude,
    required double searchRadius,
    required String userId,
  }) {
    GeoFirePoint center = _geo.point(latitude: latitude, longitude: longitude);

    var collectionReference = _firestore.collection('gift_ask');

    try {
      var stream = _geo
          .collection(collectionRef: collectionReference)
          .within(center: center, radius: searchRadius, field: 'position', strictMode: true)
          .map((docList) {
        List<GiftAsk> list = [];
        docList.forEach((doc) {
          var gift = GiftAsk.fromJson(doc.data() ?? {});
          if (gift.id != userId) {
            list.add(gift);
          }
        });
        return list.isEmpty ? const GiftAskListUnion.empty() : GiftAskListUnion.data(list);
      });

      return stream;
    } catch (e) {
      return Stream.value(GiftAskListUnion.error(GiftAskException(message: e.toString())));
    }
  }

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
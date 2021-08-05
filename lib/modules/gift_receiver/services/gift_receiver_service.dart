import 'package:alokito_new/modules/gift_receiver/gift_receiver_exception.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

abstract class BaseGiftReceiverService {
  Future<bool> addGiftRequest({required GiftReceiver giftReceiver});

  Future<bool> findGift({required String id});

  Future<void> deleteGiftRequest({required GiftReceiver giftReceiver});

  Future<GiftReceiver?> getGiftRequest({required String id});

  Future<bool> updateGiftReceiver({required GiftReceiver giftReceiver});
}

class GiftReceiverService implements BaseGiftReceiverService {
  GiftReceiverService(this.geo, this._firestore);

  final Geoflutterfire geo;
  final FirebaseFirestore _firestore;

  @override
  Future<GiftReceiver> getGiftRequest({required String id}) async {
    try {
      var doc = await _firestore.collection('gift_receiver').doc(id).get();

      return GiftReceiver.fromJson(doc.data()!);
    } on FirebaseException catch (e) {
      throw GiftReceiverException(message: e.message);
    }
  }

  @override
  Future<bool> addGiftRequest({required GiftReceiver giftReceiver}) async {
    try {
      await _firestore.collection('gift_receiver').doc(giftReceiver.id).set(giftReceiver.toJson());

      return true;
    } on FirebaseException catch (e) {
      throw GiftReceiverException(message: e.message);
    }
  }

  @override
  Future<bool> findGift({required String id}) async {
    try {
      var doc = await _firestore.collection('gift_receiver').doc(id).get();
      return doc.exists ? true : false;
    } on FirebaseException catch (e) {
      throw GiftReceiverException(message: e.message);
    }
  }

  @override
  Future<bool> updateGiftReceiver({required GiftReceiver giftReceiver}) async {
    try {
      await _firestore.collection('gift_receiver').doc(giftReceiver.id).update(giftReceiver.toJson());
      return true;
    } on FirebaseException catch (e) {
      throw GiftReceiverException(message: e.message);
    }
  }

  @override
  Future<void> deleteGiftRequest({required GiftReceiver giftReceiver}) async {
    try {
      await _firestore.collection('gift_receiver').doc(giftReceiver.id).delete();
    } catch (e) {
      throw GiftReceiverException(message: e.toString());
    }
  }
}

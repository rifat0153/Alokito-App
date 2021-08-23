import 'dart:convert';

import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_exception.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

abstract class BaseGiftReceiverService {
  Future<bool> addGiftRequest({required GiftReceiver giftReceiver});

  Future<bool> findGift({required String id});

  Future<void> deleteGiftRequest(String docId);

  Future<GiftReceiverNotificationUnion> getGiftRequest({required String id});

  Future<bool> updateGiftReceiver({required GiftReceiver giftReceiver});
}

class GiftReceiverService implements BaseGiftReceiverService {
  GiftReceiverService(this.geo, this._firestore);

  final Geoflutterfire geo;
  final FirebaseFirestore _firestore;

 @override
  Future<GiftGiverListUnion> getGiftDB(String page, String limit, LatLng latLng, double radius) async {
    final client = http.Client();

    final http.Response response = await client.get(
      Uri.parse('http://192.168.0.121:3000/api/v1/gift/near?lat=23&lng=91&maxDistance=104&page=1&limit=5'),
      headers: {"Content-Type": "application/json"},
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    final List<dynamic> giftJson = body['gifts'] as List<dynamic>;

    final List<GiftGiver> gifts = giftJson
        .map(
          (user) => GiftGiver.fromJson(giftJson as Map<String, dynamic>),
        )
        .toList();

    gifts.forEach((element) {
      print(element);
    });

    return GiftGiverListUnion.data(gifts);
  }


  @override
  Future<GiftReceiverNotificationUnion> getGiftRequest({required String id}) async {
    try {
      var doc = await _firestore.collection('gift_receiver').doc(id).get();

      if (doc.exists) {
        var giftReceiver = GiftReceiver.fromJson(doc.data()!);
        return GiftReceiverNotificationUnion.dataa(giftReceiver);
      } else {
        return GiftReceiverNotificationUnion.error(GiftReceiverException(message: 'Gift request deleted'));
      }
    } on FirebaseException catch (e) {
      return GiftReceiverNotificationUnion.error(e);
    } on Exception catch (_) {
      return GiftReceiverNotificationUnion.error(GiftReceiverException(message: 'Gift request deleted'));
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
  Future<void> deleteGiftRequest(String docId) async {
    try {
      await _firestore.collection('gift_receiver').doc(docId).delete();
    } catch (e) {
      throw GiftReceiverException(message: e.toString());
    }
  }
}

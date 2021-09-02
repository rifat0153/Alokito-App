import 'dart:async';
import 'dart:convert';

import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/modules/gift_requester/gift_requester_exception.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:http/http.dart' as http;

abstract class BaseGiftRequesterService {
  Future<bool> addGiftRequest({required GiftRequest giftReceiver});

  Future<GiftListUnion> getGiftDB(String page, String limit, double lat, double lng, double radius, String id);

  Future<GiftListUnion> getGiftByFilterDB(
      String searchString, String page, String limit, double lat, double lng, double radius, String id);

  Future<bool> findGift({required String id});

  Future<void> deleteGiftRequest(String docId);

  Future<GiftRequestNotificationUnion> getGiftRequest({required String id});

  Future<bool> updateGiftReceiver({required GiftRequest giftReceiver});
}

class GiftRequesterService implements BaseGiftRequesterService {
  GiftRequesterService(this.geo, this._firestore);

  final Geoflutterfire geo;
  final FirebaseFirestore _firestore;

  @override
  Future<GiftListUnion> getGiftByFilterDB(
    String searchString,
    String page,
    String limit,
    double lat,
    double lng,
    double radius,
    String id,
  ) async {
    final client = http.Client();

    print('Seraching with search term: ' + searchString);

    try {
      final http.Response response = await client.get(
        Uri.parse(
            // '$baseUrl/gift/search?lat=23&lng=91&maxDistance=500&page=1&limit=10&searchString=4'),
            '$baseUrl/gift/search?searchString=$searchString&lat=$lat&lng=$lng&maxDistance=$radius&page=$page&limit=$limit&userId=$id'),
        headers: {"Content-Type": "application/json"},
      ).timeout(const Duration(seconds: 5));

      final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

      final List<dynamic> giftJson = body['gifts'] as List<dynamic>;

      final List<Gift> gifts = giftJson
          .map(
            (gift) => Gift.fromJson(gift as Map<String, dynamic>),
          )
          .toList();

      final List<Gift> filteredGifts = [];

      for (final giftData in giftJson) {
        final gift = Gift.fromJson(giftData as Map<String, dynamic>);

        if (gift.user != null) {
          filteredGifts.add(gift);
        }
      }

      return GiftListUnion.data(filteredGifts);
    } on TimeoutException catch (_) {
      return const GiftListUnion.error('Server could not be reached');
    } catch (e) {
      return GiftListUnion.error(e.toString());
    }
  }

  @override
  Future<GiftListUnion> getGiftDB(
    String page,
    String limit,
    double lat,
    double lng,
    double radius,
    String id,
  ) async {
    final client = http.Client();

    try {
      final http.Response response = await client.get(
        Uri.parse('$baseUrl/gift/near?lat=$lat&lng=$lng&maxDistance=$radius&page=$page&limit=$limit&userId=$id'),
        headers: {"Content-Type": "application/json"},
      ).timeout(const Duration(seconds: 5));

      final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

      final List<dynamic> giftJson = body['gifts'] as List<dynamic>;

      final List<Gift> filteredGifts = [];

      for (final giftData in giftJson) {
        final gift = Gift.fromJson(giftData as Map<String, dynamic>);

        print('UID: ' + gift.user!.uid.toString());

        if (gift.user != null) {
          filteredGifts.add(gift);
        }
      }

      print(' Filtered Results ' + filteredGifts.length.toString());

      return GiftListUnion.data(filteredGifts);
    } on TimeoutException catch (_) {
      return const GiftListUnion.error('Server could not be reached');
    } catch (e) {
      return GiftListUnion.error(e.toString());
    }
  }

  @override
  Future<GiftRequestNotificationUnion> getGiftRequest({required String id}) async {
    try {
      var doc = await _firestore.collection('gift_receiver').doc(id).get();

      if (doc.exists) {
        var giftReceiver = GiftRequest.fromJson(doc.data()!);
        return GiftRequestNotificationUnion.dataa(giftReceiver);
      } else {
        return GiftRequestNotificationUnion.error(GiftRequesterException(message: 'Gift request deleted'));
      }
    } on FirebaseException catch (e) {
      return GiftRequestNotificationUnion.error(e);
    } on Exception catch (_) {
      return GiftRequestNotificationUnion.error(GiftRequesterException(message: 'Gift request deleted'));
    }
  }

  @override
  Future<bool> addGiftRequest({required GiftRequest giftReceiver}) async {
    try {
      await _firestore.collection('gift_receiver').doc(giftReceiver.id).set(giftReceiver.toJson());

      return true;
    } on FirebaseException catch (e) {
      throw GiftRequesterException(message: e.message);
    }
  }

  @override
  Future<bool> findGift({required String id}) async {
    try {
      var doc = await _firestore.collection('gift_receiver').doc(id).get();
      return doc.exists ? true : false;
    } on FirebaseException catch (e) {
      throw GiftRequesterException(message: e.message);
    }
  }

  @override
  Future<bool> updateGiftReceiver({required GiftRequest giftReceiver}) async {
    try {
      await _firestore.collection('gift_receiver').doc(giftReceiver.id).update(giftReceiver.toJson());
      return true;
    } on FirebaseException catch (e) {
      throw GiftRequesterException(message: e.message);
    }
  }

  @override
  Future<void> deleteGiftRequest(String docId) async {
    try {
      await _firestore.collection('gift_receiver').doc(docId).delete();
    } catch (e) {
      throw GiftRequesterException(message: e.toString());
    }
  }
}

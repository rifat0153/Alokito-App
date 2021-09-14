import 'dart:async';
import 'dart:convert';

import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/modules/gift_requester/gift_requester_exception.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';

abstract class BaseGiftRequesterService {
  Future<GiftListUnion> getGiftDB(String page, String limit, double lat, double lng, double radius, String id);

  Future<GiftListUnion> getGiftByFilterDB(
      String searchString, String page, String limit, double lat, double lng, double radius, String id);
}

class GiftRequesterService extends GetConnect implements BaseGiftRequesterService {
  GiftRequesterService(this.geo);

  final Geoflutterfire geo;

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
    try {
      final Response response = await get(
        '$baseUrl/gift/search?searchString=$searchString&lat=$lat&lng=$lng&maxDistance=$radius&page=$page&limit=$limit&userId=$id',
      ).timeout(const Duration(seconds: myTimeout));

      print(response.statusCode);

      if (response.statusCode != 200 || response.statusCode != 201) {
        return GiftListUnion.error('Server Error');
      }

      final List<dynamic> giftJson = response.body['gifts'] as List<dynamic>;

      // Fill this array looping through API List
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
    try {
      final Response response = await get(
        '$baseUrl/gift/near?lat=$lat&lng=$lng&maxDistance=$radius&page=$page&limit=$limit&userId=$id',
      ).timeout(const Duration(seconds: myTimeout));

      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> giftJson = response.body['gifts'] as List<dynamic>;

        // Fill this array looping through API List
        final List<Gift> filteredGifts = [];

        for (final giftData in giftJson) {
          final gift = Gift.fromJson(giftData as Map<String, dynamic>);

          if (gift.user != null) {
            filteredGifts.add(gift);
          }
        }

        return GiftListUnion.data(filteredGifts);
      } else {
        return const GiftListUnion.error('Server Error');
      }
    } on TimeoutException catch (_) {
      return const GiftListUnion.error('Server could not be reached');
    } catch (e) {
      return GiftListUnion.error(e.toString());
    }
  }
}

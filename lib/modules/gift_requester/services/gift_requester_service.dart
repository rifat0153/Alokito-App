import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:alokito_new/modules/gift_requester/dto/gift_dto.dart';

import '../../../models/gift_giver/gift.dart';
import '../../../models/gift_request/gift_request.dart';
import '../gift_requester_exception.dart';
import '../../../shared/config.dart';
import 'package:get/get.dart';

abstract class BaseGiftRequesterService {
  Future<GiftListDtoState> getGiftDB(String page, String limit, double lat, double lng, double radius, String id);

  Future<GiftListState> getGiftByFilterDB(
      String searchString, String page, String limit, double lat, double lng, double radius, String id);
}

class GiftRequesterService extends GetConnect implements BaseGiftRequesterService {
  GiftRequesterService();

  @override
  Future<GiftListState> getGiftByFilterDB(
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
        return GiftListState.error('Server Error');
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

      return GiftListState.data(filteredGifts);
    } on TimeoutException catch (_) {
      return const GiftListState.error('Server could not be reached');
    } catch (e) {
      return GiftListState.error(e.toString());
    }
  }

  @override
  Future<GiftListDtoState> getGiftDB(
    String page,
    String limit,
    double lat,
    double lng,
    double radius,
    String id,
  ) async {
    try {
      final Response<GiftDto> response = await get(
              '$baseUrl/gift/near?lat=$lat&lng=$lng&maxDistance=$radius&page=$page&limit=$limit&userId=$id',
              decoder: (data) => GiftDto.fromJson(data as Map<String, dynamic>))
          .timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final GiftDto giftDto = response.body!;

        return GiftListDtoState.success(giftDto);
      } else {
        return const GiftListDtoState.error('Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftListDtoState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftListDtoState.error('Server could not be reached. Please check internet connection');
    } catch (e) {
      return const GiftListDtoState.error('Opps. Looks like something went wrong');
    }
  }
}

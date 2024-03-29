
import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../shared/config.dart';
import '../dto/gift_ask_dto.dart';

abstract class BaseGiftAskGiverService {
  Future<GiftAskListDtoState> getGiftDB(
      String page, String limit, double lat, double lng, double radius, String id);

  Future<GiftAskListDtoState> getGiftByFilterDB(
      String searchString, String page, String limit, double lat, double lng, double radius, String id);
}

class GiftAskGiverService extends GetConnect implements BaseGiftAskGiverService {
  GiftAskGiverService();

  @override
  Future<GiftAskListDtoState> getGiftByFilterDB(
    String searchString,
    String page,
    String limit,
    double lat,
    double lng,
    double radius,
    String id,
  ) async {
    try {
      final Response<GiftAskDto> response = await get(
              '$baseUrl/gift_ask/search?page=$page&limit=$limit&searchString=$searchString&userId=$id',
              decoder: (data) => GiftAskDto.fromJson(data as Map<String, dynamic>))
          .timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final GiftAskDto giftDto = response.body!;

        print('GiftAskGiverService called');

        return GiftAskListDtoState.success(giftDto);
      } else {
        return const GiftAskListDtoState.error('Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftAskListDtoState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftAskListDtoState.error('Server could not be reached. Please check internet connection');
    } catch (e, s) {
      print(e);
      print(s);
      return GiftAskListDtoState.error(e.toString());
    }
  }

  @override
  Future<GiftAskListDtoState> getGiftDB(
    String page,
    String limit,
    double lat,
    double lng,
    double radius,
    String id,
  ) async {
    try {
      final Response<GiftAskDto> response = await get(
              '$baseUrl/gift_ask/near?lat=$lat&lng=$lng&maxDistance=$radius&page=$page&limit=$limit&userId=$id',
              decoder: (data) => GiftAskDto.fromJson(data as Map<String, dynamic>))
          .timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final GiftAskDto giftAskDto = response.body!;

        return GiftAskListDtoState.success(giftAskDto);
      } else {
        return const GiftAskListDtoState.error('Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftAskListDtoState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftAskListDtoState.error('Server could not be reached. Please check internet connection');
    } catch (e, s) {
      print(e);
      print(s);
      return const GiftAskListDtoState.error('Opps. Looks like something went wrong');
    }
  }
}

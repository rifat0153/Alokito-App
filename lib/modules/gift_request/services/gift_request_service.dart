import 'dart:async';
import 'dart:io';
import 'package:alokito_new/models/gift/gift.dart';

import 'package:alokito_new/modules/gift_request/dto/gift_dto.dart';

import '../../../shared/config.dart';
import 'package:get/get.dart';

abstract class BaseGiftRequestService {
  Future<GiftListDtoState> getGiftDB(String page, String limit, double lat, double lng, double radius, String id);

  Future<GiftListDtoState> getGiftByFilterDB(
      String searchString, String page, String limit, double lat, double lng, double radius, String id);
}

class GiftRequestService extends GetConnect implements BaseGiftRequestService {
  GiftRequestService();

  @override
  Future<GiftListDtoState> getGiftByFilterDB(
    String searchString,
    String page,
    String limit,
    double lat,
    double lng,
    double radius,
    String id,
  ) async {
    try {
      final Response<GiftDto> response = await get(
          '$baseUrl/gift/search?page=$page&limit=$limit&searchString=$searchString&userId=$id',
          decoder: (data) => GiftDto.fromJson(data as Map<String, dynamic>)).timeout(const Duration(seconds: myTimeout));

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
    } catch (e, s) {
      print(e);
      print(s);
      return const GiftListDtoState.error('Opps. Looks like something went wrong');
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
          decoder: (data) => GiftDto.fromJson(data as Map<String, dynamic>)).timeout(const Duration(seconds: myTimeout));

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

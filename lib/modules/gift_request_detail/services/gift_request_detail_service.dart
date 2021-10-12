import 'dart:async';
import 'dart:io';

import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get.dart';

abstract class BaseGiftRequestDetailService {
  Future<GiftRequestListState> getGiftRequests(String userId);
}

class GiftRequestDetailService extends GetConnect implements BaseGiftRequestDetailService {
  @override
  Future<GiftRequestListState> getGiftRequests(String userId) async {
    try {
      final Response response = await get(
        '$baseUrl/gift_request/show_by_requester_id?userId=$userId',
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> body = response.body as List<dynamic>;

        List<GiftRequest> giftList = [];

        for (var item in body) {
          print(item);
        }

        // return GiftRequestListState.data(giftDto);
        return const GiftRequestListState.error('Some unexpected error occurred');
      } else {
        return const GiftRequestListState.error('Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftRequestListState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftRequestListState.error('Server could not be reached. Please check internet connection');
    } catch (e, s) {
      print(e);
      print(s);
      return const GiftRequestListState.error('Opps. Looks like something went wrong');
    }
  }
}

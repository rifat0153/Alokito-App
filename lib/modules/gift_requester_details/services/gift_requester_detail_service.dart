import 'dart:convert';

import 'package:get/get.dart';

import '../../../models/gift_request/gift_request.dart';
import '../../../shared/config.dart';
import '../../../shared/my_bottomsheets.dart';
import '../../../shared/shared_service.dart';

abstract class BaseGiftRequesterDetailService {
  Future<void> add(GiftRequest giftRequest);

  Future<void> update(GiftRequest giftRequest);

  Future<void> remove({
    required String status,
    String? giftRequestId,
    String? giftId,
    String? requesterId,
  });
}

class GiftRequesterDetailService extends GetConnect implements BaseGiftRequesterDetailService {
  @override
  Future<void> add(GiftRequest giftRequest) async {
    try {
      final headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      };

      final response = await post(
        '$baseUrl/gift_request/store',
        jsonEncode(giftRequest.toJson()),
        headers: headers,
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MyBottomSheet.showSuccessBottomSheet('GiftRequest Added');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e) {
      throw MyException(exceptionFrom: 'GiftRequestDetailService');
    }
  }

  @override
  Future<void> remove({
    required String status,
    String? giftRequestId,
    String? giftId,
    String? requesterId,
  }) async {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> update(GiftRequest giftRequest) async {
    try {
      final headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      };

      final response = await post(
        '$baseUrl/gift_request/updaterequeststatus',
        jsonEncode(giftRequest.toJson()),
        headers: headers,
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MyBottomSheet.showSuccessBottomSheet('GiftRequest Added');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e) {
      throw MyException(exceptionFrom: 'GiftRequestDetailService');
    }
  }
}

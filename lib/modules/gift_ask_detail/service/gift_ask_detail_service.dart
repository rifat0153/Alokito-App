import 'dart:convert';

import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:get/get.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';

abstract class BaseGiftAskDetailService {
  Future<bool> add(GiftAskRequest giftAskRequest);

  Future<void> update(GiftAskRequest giftAskRequest);

  Future<void> remove({
    required String status,
    String? giftAskRequestId,
    String? giftAskId,
    String? giverId,
  });
}

class GiftAskDetailService extends GetConnect implements BaseGiftAskDetailService {
  final url = '${MyConfig.baseUrl}/gift_ask_request';

  @override
  Future<bool> add(GiftAskRequest giftAskRequest) async {
    try {
      final headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      };

      final response = await post(
        '$url/store',
        jsonEncode(giftAskRequest.toJson()),
        headers: headers,
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MySnackbar.showErrorSnackbar('GiftAskRequest Added');
        return true;
      } else {
        await MySnackbar.showErrorSnackbar('${response.statusCode}: Something went wrong');
        return false;
      }
    } catch (e) {
      await MySnackbar.showErrorSnackbar('Something went wrong');
      return false;
    }
  }

  @override
  Future<void> remove({
    required String status,
    String? giftAskRequestId,
    String? giftAskId,
    String? giverId,
  }) async {
    try {
      final body1 = {
        'giftId': giftAskRequestId,
        'giver': giverId,
        'giftAskRequestStatus': status,
      };

      final response = await post(
        '$url/updateaskrequeststatus',
        jsonEncode(body1),
        // headers: headers,
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MyBottomSheet.showSuccessBottomSheet('GiftAskRequest Updated');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e, s) {
      throw MyException(exceptionFrom: 'GiftRequestDetailService');
    }
  }

  @override
  Future<void> update(GiftAskRequest giftAskRequest) async {
    try {
      final headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      };

      final response = await post(
        '$url/updateaskrequeststatus',
        jsonEncode(giftAskRequest.toJson()),
        headers: headers,
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MyBottomSheet.showSuccessBottomSheet('GiftAskRequest Added');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e) {
      throw MyException(exceptionFrom: 'GiftRequestDetailService');
    }
  }
}

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:get/get.dart';

abstract class BaseGiftRequestDetailService {
  Future<GiftRequestListState> getGiftRequests(String userId);

  Future<GiftRequestState> getGiftRequestById(String requestId);

  Future<void> updateStatus({
    required String status,
    required String giftRequestId,
  });

  Future<bool> updateRatingAndSendMessage(
      {required String id,
      required bool isUpdatingRequester,
      required String messageForRequester,
      required String messageForGiver,
      required int ratingForRequester,
      required int ratingForGiver,
      required String requesterId,
      required String giverId});
}

class GiftRequestDetailService extends GetConnect implements BaseGiftRequestDetailService {
  final url = '${MyConfig.baseUrl}/gift_request';

  @override
  Future<void> updateStatus({
    required String status,
    required String giftRequestId,
  }) async {
    try {
      final body1 = {
        'id': giftRequestId,
        'giftRequestStatus': status,
      };

      final response = await post(
        '${MyConfig.baseUrl}/gift_request/updaterequeststatus',
        jsonEncode(body1),
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MyBottomSheet.showSuccessBottomSheet('GiftRequest Updated');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw MyException(exceptionFrom: 'GiftRequestDetailService');
    }
  }

  @override
  Future<GiftRequestState> getGiftRequestById(String requestId) async {
    print('GiftRequestDetail getGiftRequestById service callled');
    print('UserId is: $requestId');

    try {
      final Response<GiftRequest> response = await get(
        '$url?id=$requestId',
        decoder: (data) => GiftRequest.fromJson(
          data as Map<String, dynamic>,
        ),
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        return GiftRequestState.data(response.body!);
      } else {
        return const GiftRequestState.error('Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftRequestState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftRequestState.error('Server could not be reached. Please check internet connection');
    } catch (e, s) {
      return const GiftRequestState.error('Opps. Looks like something went wrong');
    }
  }

  @override
  Future<GiftRequestListState> getGiftRequests(String userId) async {
    print('GiftRequestDetail service callled');
    print('UserId is: $userId');

    try {
      final Response response = await get(
        '$url/show_by_requester_id?requester=$userId',
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> body = response.body as List<dynamic>;

        final List<GiftRequest> giftRequestList = [];

        for (final item in body) {
          if (item != null) {
            giftRequestList.add(GiftRequest.fromJson(item as Map<String, dynamic>));
          }
        }

        print(giftRequestList);

        return GiftRequestListState.data(giftRequestList);
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

  @override
  Future<bool> updateRatingAndSendMessage(
      {required String id,
      required bool isUpdatingRequester,
      required String messageForRequester,
      required String messageForGiver,
      required int ratingForRequester,
      required int ratingForGiver,
      required String requesterId,
      required String giverId}) async {
    try {
      final body = {
        "id": id,
        "isUpdatingRequester": isUpdatingRequester,
        "messageForRequesterSent": true,
        "messageForRequester": messageForRequester,
        "ratingForRequester": ratingForRequester,
        "messageForGiverSent": true,
        "messageForGiver": messageForGiver,
        "ratingForGiver": ratingForGiver,
        "requesterId": requesterId,
        "giverId": giverId
      };

      print(body);

      final response = await post(
        '$url/update',
        jsonEncode(body),
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MySnackbar.showErrorSnackbar('GiftAskRequest Updated');
        return true;
      } else {
        await MySnackbar.showErrorSnackbar('${response.statusCode}: Something went wrong');
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}

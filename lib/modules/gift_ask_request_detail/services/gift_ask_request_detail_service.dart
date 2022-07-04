import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:alokito_new/models/gift_ask_request.dart/gift_ask_request.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:get/get.dart';

abstract class BaseGiftAskRequestDetailService {
  Future<GiftAskRequestListState> getGiftAskRequests(String userId);

  // Future<GiftAskRequestState> getGiftAskRequestById(String askRequestId);

  Future<bool> updateStatus({
    required String status,
    required String giftAskRequestId,
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

class GiftAskRequestDetailService extends GetConnect
    implements BaseGiftAskRequestDetailService {
  final url = '${MyConfig.baseUrl}/gift_ask_request';

  @override
  Future<bool> updateStatus({
    required String status,
    required String giftAskRequestId,
  }) async {
    try {
      final body1 = {
        'id': giftAskRequestId,
        'giftAskRequestStatus': status,
      };

      final response = await post(
        '$url/updateaskrequeststatus',
        jsonEncode(body1),
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MySnackbar.showSuccessSnackbar('GiftRequest Updated');
        return true;
      } else {
        await MySnackbar.showErrorSnackbar('server could not be reached');
        return false;
      }
    } on TimeoutException catch (e) {
      await MySnackbar.showErrorSnackbar('server could not be reached');
      return false;
    } catch (e, s) {
      print(e);
      print(s);
      await MySnackbar.showErrorSnackbar('some unexpected error occurred');
      return false;
    }
  }

  @override
  Future<GiftAskRequestListState> getGiftAskRequests(String userId) async {
    print('GiftRequestDetail service callled');
    print('UserId is: $userId');

    try {
      final Response response = await get(
        '$url/show_by_requester_id?requester=$userId',
      ).timeout(const Duration(seconds: myTimeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> body = response.body as List<dynamic>;

        final List<GiftAskRequest> giftAskRequestList = [];

        for (final item in body) {
          if (item != null) {
            giftAskRequestList
                .add(GiftAskRequest.fromJson(item as Map<String, dynamic>));
          }
        }

        print(giftAskRequestList);

        return GiftAskRequestListState.data(giftAskRequestList);
      } else {
        return const GiftAskRequestListState.error(
            'Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftAskRequestListState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftAskRequestListState.error(
          'Server could not be reached. Please check internet connection');
    } catch (e, s) {
      print(e);
      print(s);
      return const GiftAskRequestListState.error(
          'Opps. Looks like something went wrong');
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
        await MySnackbar.showErrorSnackbar(
            '${response.statusCode}: Something went wrong');
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  // @override
  // Future<GiftAskRequestState> getGiftAskRequestById(String askRequestId) async {
  //   print('GiftRequestDetail getGiftRequestById service callled');
  //   print('UserId is: $askRequestId');

  //   try {
  //     final Response<GiftAskRequest> response = await get(
  //       '$url?id=$askRequestId',
  //       decoder: (data) => GiftAskRequest.fromJson(
  //         data as Map<String, dynamic>,
  //       ),
  //     ).timeout(const Duration(seconds: myTimeout));

  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       print(response.body);
  //       return GiftAskRequestState.data(response.body!);
  //     } else {
  //       return const GiftAskRequestState.error('Some unexpected error occurred');
  //     }
  //   } on TimeoutException catch (_) {
  //     return const GiftAskRequestState.error('Server could not be reached');
  //   } on IOException catch (_) {
  //     return const GiftAskRequestState.error('Server could not be reached. Please check internet connection');
  //   } catch (e, s) {
  //     return const GiftAskRequestState.error('Opps. Looks like something went wrong');
  //   }
  // }
}

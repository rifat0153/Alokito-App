import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:alokito_new/models/gift_ask_request.dart/gift_ask_request.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:get/get.dart';

abstract class BaseGiftAskRequestDetailService {
  Future<GiftAskRequestListState> getGiftAskRequests(String userId);

  // Future<GiftAskRequestState> getGiftAskRequestById(String askRequestId);

  Future<void> updateStatus({
    required String status,
    required String giftAskRequestId,
  });
}

class GiftAskRequestDetailService extends GetConnect implements BaseGiftAskRequestDetailService {
  final url = '${MyConfig.baseUrl}/gift_ask_request';

  @override
  Future<void> updateStatus({
    required String status,
    required String giftAskRequestId,
  }) async {
    try {
      final body1 = {
        'id': giftAskRequestId,
        'giftRequestStatus': status,
      };

      final response = await post(
        '$url/updaterequeststatus',
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
            giftAskRequestList.add(GiftAskRequest.fromJson(item as Map<String, dynamic>));
          }
        }

        print(giftAskRequestList);

        return GiftAskRequestListState.data(giftAskRequestList);
      } else {
        return const GiftAskRequestListState.error('Some unexpected error occurred');
      }
    } on TimeoutException catch (_) {
      return const GiftAskRequestListState.error('Server could not be reached');
    } on IOException catch (_) {
      return const GiftAskRequestListState.error('Server could not be reached. Please check internet connection');
    } catch (e, s) {
      print(e);
      print(s);
      return const GiftAskRequestListState.error('Opps. Looks like something went wrong');
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

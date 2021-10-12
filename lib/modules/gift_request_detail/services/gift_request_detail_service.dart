import 'dart:async';
import 'dart:io';

import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get.dart';

abstract class BaseGiftRequestDetailService {
  Future<GiftRequestListState> getGiftRequests(String userId);

  Future<GiftRequestState> getGiftRequestById(String requestId);
}

class GiftRequestDetailService extends GetConnect implements BaseGiftRequestDetailService {
  @override
  Future<GiftRequestState> getGiftRequestById(String requestId) async {
    print('GiftRequestDetail getGiftRequestById service callled');
    print('UserId is: $requestId');

    try {
      final Response<GiftRequest> response = await get(
        '${MyConfig.baseUrl}/gift_request?id=$requestId',
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
      print(e);
      print(s);
      return const GiftRequestState.error('Opps. Looks like something went wrong');
    }
  }

  @override
  Future<GiftRequestListState> getGiftRequests(String userId) async {
    print('GiftRequestDetail service callled');
    print('UserId is: $userId');

    try {
      final Response response = await get(
        '${MyConfig.baseUrl}/gift_request/show_by_requester_id?requester=$userId',
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
}

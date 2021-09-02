import 'dart:convert';

import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:http/http.dart' as http;

abstract class BaseGiftReceiverDetailService {
  Future<void> add(GiftRequest giftRequest);

  Future<void> update(GiftRequest giftRequest, String requestStatus);

  Future<void> delete(GiftRequest giftRequest);
}

class GiftReceiverDetailService implements BaseGiftReceiverDetailService {
  @override
  Future<void> add(GiftRequest giftRequest) async {
    final client = http.Client();

    print('In Gift Receiver Detail Service');
    print(giftRequest.toJson());

    const data = {
      "giftRequestStatus": {"runtimeType": "pending"},
      "requester": {"id": "612b4060da0941461c28951d"},
      "gift": {"id": "612e257631d8c633b0985df6"}
    };

    try {
      final http.Response response = await client
          .post(
            Uri.parse('$baseUrl/giftrequest/store'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(giftRequest.toJson()),
          )
          .timeout(const Duration(seconds: timeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MySnackbar.showSuccessSnackbar('GiftRequest Added');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e) {
      throw MyException(exceptionFrom: 'GiftRequestDetailService');
    } finally {
      client.close();
    }
  }

  @override
  Future<void> delete(GiftRequest giftRequest) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> update(GiftRequest giftRequest, String requestStatus) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

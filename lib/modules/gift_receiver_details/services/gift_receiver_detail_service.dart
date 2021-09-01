import 'dart:convert';

import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:http/http.dart' as http;

abstract class BaseGiftReceiverDetailService {
  Future<void> add(GiftReceiver giftReceiver);

  Future<void> update(GiftReceiver giftReceiver, String requestStatus);

  Future<void> delete(GiftReceiver giftReceiver);
}

class GiftReceiverDetailService implements BaseGiftReceiverDetailService {
  @override
  Future<void> add(GiftReceiver giftReceiver) async {
    final client = http.Client();

    print('In Gift Receiver Detail Service');
    print(giftReceiver.toJson());

    try {
      final http.Response response = await client
          .post(
            Uri.parse('$baseUrl/giftrequest/store'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(giftReceiver.toJson()),
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
  Future<void> delete(GiftReceiver giftReceiver) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> update(GiftReceiver giftReceiver, String requestStatus) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

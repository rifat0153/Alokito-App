import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/modules/gift_record/gift_record_service.dart';
import 'package:get/get.dart';

class GiftRecordController extends GetxController {
  final GiftRecordService service = GiftRecordService();

  Future<void> addGiftRecord({required GiftReqeust giftReqeust}) async {
    await service.addGiftRecord(giftReqeust: giftReqeust);
  }
}

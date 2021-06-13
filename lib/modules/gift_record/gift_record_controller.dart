import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/gift_record/gift_record_service.dart';
import 'package:get/get.dart';

class GiftRecordController extends GetxController {
  final GiftRecordService service = GiftRecordService();

  Future<void> addGiftRecord(
      {required GiftNotification giftNotification}) async {
    await service.addGiftRecord(giftNotification: giftNotification);
  }
}

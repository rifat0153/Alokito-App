import 'package:alokito_new/models/gift_giver/gift_request.dart';

abstract class BaseGiftRecordService {
  Future<void> addGiftRecord({required GiftReqeust giftReqeust});
}

class GiftRecordService implements BaseGiftRecordService {
  @override
  Future<void> addGiftRecord({required GiftReqeust giftReqeust})async {
    
  }
}

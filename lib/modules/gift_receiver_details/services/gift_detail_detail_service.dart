import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';

abstract class BaseGiftReceiverDetailService {
  Future<void> add(GiftReceiver giftReceiver);

  Future<void> update(GiftReceiver giftReceiver, String requestStatus);

  Future<void> delete(GiftReceiver giftReceiver);
}

class GiftReceiverDetailServuce implements BaseGiftReceiverDetailService {
  @override
  Future<void> add(GiftReceiver giftReceiver) {
    // TODO: implement add
    throw UnimplementedError();
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

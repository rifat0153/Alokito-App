import 'package:alokito_new/models/gift_giver/gift_giver.dart';

abstract class BaseGiftRequestService {
  Future<bool> findGift({required GiftGiver giftGiver});

  Future<bool> deleteGiftRequest({required GiftGiver giftGiver});

  Future<bool> addGiftRequest({required GiftGiver giftGiver});
}

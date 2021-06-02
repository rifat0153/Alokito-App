import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';

abstract class BaseGiftRequestService {
  Future<bool> findGift({required GiftGiver giftGiver});

  Future<bool> increaseNoOfTimesGiftRequested({required GiftGiver giftGiver});

  Future<bool> deleteGiftRequest({required GiftGiver giftGiver});

  Future<bool> addGiftRequest({required GiftGiver giftGiver});

  Future<bool> changeRequestStatus(
      {required bool decision, required GiftNotification giftNotification});
}

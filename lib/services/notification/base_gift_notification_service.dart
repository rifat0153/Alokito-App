import 'package:alokito_new/models/notification/gift_notification.dart';

abstract class BaseGiftNotificationService {
  Future<bool> addGiftNotification(
      {required GiftNotification giftNotification});
}

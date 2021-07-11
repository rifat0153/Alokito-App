import 'package:alokito_new/models/gift_giver/gift_giver.dart';

enum GiftType { anyRetailItem, packageFor3Days, packageFor7Days, customizedPackage }

enum NotificationType {
  giftGiver,
  giftAsk,
  text,
  error,
}

enum GiftAskStatus { pending, accepted, denied, delivered, deleted, error }

enum GiftRequestStatus {
  requestPending,
  requestConfirmed,
  requestCanceledByGiver,
  requestCanceledByRequester,
  requestAccepted,
  requestDelivered,
  messageForGiverSent,
  messageForRequesterSent,
}

enum GiftAskType {
  food,
  medicine,
  others,
  error,
}

String convertGiftAskType({required GiftAskType giftAskType}) {
  switch (giftAskType) {
    case GiftAskType.food:
      return 'Food';
    case GiftAskType.medicine:
      return 'Medicine';
    case GiftAskType.others:
      return 'Others';
    default:
      return 'N/A';
  }
}

String convertGiftNotificationTypeToString({required NotificationType notificationType}) {
  switch (notificationType) {
    case NotificationType.giftGiver:
      return 'Gift Giver';
    case NotificationType.giftAsk:
      return 'Gift Notification';
    default:
      return 'N/A';
  }
}

String convertGiftType(GiftType giftType) {
  switch (giftType) {
    case GiftType.anyRetailItem:
      return 'Any Retail Item';
    case GiftType.packageFor3Days:
      return 'Package for 3 days';
    case GiftType.packageFor7Days:
      return 'Package for 7 days';
    case GiftType.customizedPackage:
      return 'Custom Package';
  }
}

String convertGiftFor(GiftGiver giftType) {
  switch (giftType.giftFor) {
    case 0:
      return 'Small Family';
    case 1:
      return 'Large Family';
    default:
      return '';
  }
}

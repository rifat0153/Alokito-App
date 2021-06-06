import 'package:alokito_new/models/gift_giver/gift_giver.dart';

enum GiftType {
  anyRetailItem,
  packageFor3Days,
  packageFor7Days,
  customizedPackage
}

enum GiftNotificationType {
  packageRequested,
  packageConfirmed,
  packageDelivered,
  packageCanceled,
  error
}

enum GiftRequestStatus {
  requestPedning,
  requestConfirmed,
  requestCanceledByGiver,
  requestCanceledByRequester,
}

String convertGiftNotificationTypeToString(
    {required GiftNotificationType giftNotificationType}) {
  switch (giftNotificationType) {
    case GiftNotificationType.packageRequested:
      return 'Requested';
    case GiftNotificationType.packageConfirmed:
      return 'Confirmed';
    case GiftNotificationType.packageDelivered:
      return 'Delivered';
    case GiftNotificationType.packageCanceled:
      return 'Canceled';
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

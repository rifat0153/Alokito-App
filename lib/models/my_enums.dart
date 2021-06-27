import 'package:alokito_new/models/gift_giver/gift_giver.dart';

enum GiftType { anyRetailItem, packageFor3Days, packageFor7Days, customizedPackage }

enum GiftNotificationType {
  packageRequested,
  packageConfirmed,
  packageDelivered,
  packageCanceledByGiver,
  packageCanceledByRequester,
  thanksForGiver,
  commentsForGiver,
  giftAsk,
  error,
}

enum GiftRequestStatus {
  requestPedning,
  requestConfirmed,
  requestCanceledByGiver,
  requestCanceledByRequester,
  requestComplete
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

String convertGiftNotificationTypeToString({required GiftNotificationType giftNotificationType}) {
  switch (giftNotificationType) {
    case GiftNotificationType.packageRequested:
      return 'Requested';
    case GiftNotificationType.packageConfirmed:
      return 'Confirmed';
    case GiftNotificationType.packageDelivered:
      return 'Delivered';
    case GiftNotificationType.packageCanceledByGiver:
      return 'Canceled';
    case GiftNotificationType.packageCanceledByRequester:
      return 'Canceled by Reqeuster';
    case GiftNotificationType.thanksForGiver:
      return 'Thanks For Giver';
    case GiftNotificationType.commentsForGiver:
      return 'Comments For Giver';
    case GiftNotificationType.giftAsk:
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

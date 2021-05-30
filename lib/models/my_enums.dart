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

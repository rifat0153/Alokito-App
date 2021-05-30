import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Map<String, dynamic> myPositionToJson(MyPosition myPosition) =>
    myPosition.toJson();
MyPosition myPositionFromJson(Map<String, dynamic> json) =>
    MyPosition.fromJson(json);

Timestamp timestampToJson(Timestamp pickUpTime) => pickUpTime;
Timestamp timestampFromJson(Timestamp json) => json;

int giftNotificationTypeToJson(GiftNotificationType giftNotificationType) {
  switch (giftNotificationType) {
    case GiftNotificationType.packageRequested:
      return 0;
    case GiftNotificationType.packageConfirmed:
      return 1;
    case GiftNotificationType.packageDelivered:
      return 2;
    case GiftNotificationType.packageCanceled:
      return 3;
    default:
      return -1;
  }
}

GiftNotificationType giftNotificationTypeFromJson(int json) {
  switch (json) {
    case 0:
      return GiftNotificationType.packageRequested;

    case 1:
      return GiftNotificationType.packageConfirmed;
    case 2:
      return GiftNotificationType.packageDelivered;
    case 3:
      return GiftNotificationType.packageCanceled;
    default:
      return GiftNotificationType.error;
  }
}

int giftTypeToJson(GiftType giftType) {
  switch (giftType) {
    case GiftType.anyRetailItem:
      return 0;
    case GiftType.packageFor3Days:
      return 1;
    case GiftType.packageFor7Days:
      return 2;
    case GiftType.customizedPackage:
      return 3;
  }
}

GiftType giftTypeFromJson(int json) {
  switch (json) {
    case 0:
      return GiftType.anyRetailItem;
    case 1:
      return GiftType.packageFor3Days;
    case 2:
      return GiftType.packageFor7Days;
    case 3:
      return GiftType.customizedPackage;
    default:
      return GiftType.anyRetailItem;
  }
}

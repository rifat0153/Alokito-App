import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

GeoPoint geoPointToJson(GeoPoint geoPoint) => geoPoint;
GeoPoint geoPointFromJson(GeoPoint json) => json;

Map<String, dynamic> myPositionToJson(MyPosition myPosition) =>
    myPosition.toJson();
MyPosition myPositionFromJson(Map<String, dynamic> json) =>
    MyPosition.fromJson(json);

Timestamp timestampToJson(Timestamp timestamp) => timestamp;
Timestamp timestampFromJson(Timestamp json) => json;

//Gift Request
Map<String, dynamic> giftRequestToJson(GiftReqeust giftReqeust) =>
    giftReqeust.toJson();
GiftReqeust giftReqeustFromJson(Map<String, dynamic> json) =>
    GiftReqeust.fromJson(json);
//Gift Notifications
Map<String, dynamic> giftNotificationToJson(
        GiftNotification giftNotification) =>
    giftNotification.toJson();
GiftNotification giftNotificationFromJson(Map<String, dynamic> json) =>
    GiftNotification.fromJson(json);

int giftRequestStatusToJson(GiftRequestStatus giftRequestStatus) {
  switch (giftRequestStatus) {
    case GiftRequestStatus.requestPedning:
      return 0;
    case GiftRequestStatus.requestConfirmed:
      return 1;
    case GiftRequestStatus.requestCanceledByGiver:
      return 2;
    case GiftRequestStatus.requestCanceledByRequester:
      return 3;
    case GiftRequestStatus.requestComplete:
      return 4;
    default:
      return -1;
  }
}

GiftRequestStatus giftRequestStatusFromJson(int json) {
  switch (json) {
    case 0:
      return GiftRequestStatus.requestPedning;
    case 1:
      return GiftRequestStatus.requestConfirmed;
    case 2:
      return GiftRequestStatus.requestCanceledByGiver;
    case 3:
      return GiftRequestStatus.requestCanceledByRequester;
    case 4:
      return GiftRequestStatus.requestComplete;
    default:
      return GiftRequestStatus.requestPedning;
  }
}

int giftNotificationTypeToJson(GiftNotificationType giftNotificationType) {
  switch (giftNotificationType) {
    case GiftNotificationType.packageRequested:
      return 0;
    case GiftNotificationType.packageConfirmed:
      return 1;
    case GiftNotificationType.packageDelivered:
      return 2;
    case GiftNotificationType.packageCanceledByGiver:
      return 3;
    case GiftNotificationType.packageCanceledByRequester:
      return 4;
    case GiftNotificationType.thanksForGiver:
      return 5;
    case GiftNotificationType.commentsForGiver:
      return 6;
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
      return GiftNotificationType.packageCanceledByGiver;
    case 4:
      return GiftNotificationType.packageCanceledByRequester;
    case 5:
      return GiftNotificationType.thanksForGiver;
    case 6:
      return GiftNotificationType.commentsForGiver;
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

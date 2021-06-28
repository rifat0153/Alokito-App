import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'gift_ask/gift_ask.dart';

GeoPoint geoPointToJson(GeoPoint geoPoint) => geoPoint;
GeoPoint geoPointFromJson(GeoPoint json) => json;

Map<String, dynamic> myPositionToJson(MyPosition myPosition) => myPosition.toJson();
MyPosition myPositionFromJson(Map<String, dynamic> json) => MyPosition.fromJson(json);

Map<String, dynamic> localUserToJson(LocalUser localUser) => localUser.toJson();
LocalUser localUserFromJson(Map<String, dynamic> json) => LocalUser.fromJson(json);



Map<String, dynamic> giftAskToJson(GiftAsk giftAsk) => giftAsk.toJson();
GiftAsk giftAskFromJson(Map<String, dynamic> json) => GiftAsk.fromJson(json);

Timestamp timestampToJson(Timestamp timestamp) => timestamp;
Timestamp timestampFromJson(Timestamp json) => json;

//Gift Request
Map<String, dynamic> giftReceiverToJson(GiftReceiver giftReqeust) => giftReqeust.toJson();
GiftReceiver giftReceiverFromJson(Map<String, dynamic> json) => GiftReceiver.fromJson(json);
//Gift Notifications

int giftAskStatusToJson(GiftAskStatus giftAskStatus) {
  switch (giftAskStatus) {
    case GiftAskStatus.pending:
      return 0;
    case GiftAskStatus.accepted:
      return 1;
    case GiftAskStatus.deleted:
      return 2;
    case GiftAskStatus.delivered:
      return 3;
    case GiftAskStatus.denied:
      return 4;
    case GiftAskStatus.error:
      return 5;
    default:
      return -1;
  }
}

GiftAskStatus giftAskStatusFromJson(int json) {
  switch (json) {
    case 0:
      return GiftAskStatus.pending;
    case 1:
      return GiftAskStatus.accepted;
    case 2:
      return GiftAskStatus.deleted;
    case 3:
      return GiftAskStatus.delivered;
    case 4:
      return GiftAskStatus.denied;
    case 5:
      return GiftAskStatus.error;
    default:
      return GiftAskStatus.error;
  }
}

int giftRequestStatusToJson(GiftRequestStatus giftRequestStatus) {
  switch (giftRequestStatus) {
    case GiftRequestStatus.requestPending:
      return 0;
    case GiftRequestStatus.requestConfirmed:
      return 1;
    case GiftRequestStatus.requestCanceledByGiver:
      return 2;
    case GiftRequestStatus.requestCanceledByRequester:
      return 3;
    case GiftRequestStatus.requestComplete:
      return 4;
    case GiftRequestStatus.requestDelivered:
      return 5;
    default:
      return -1;
  }
}

GiftRequestStatus giftRequestStatusFromJson(int json) {
  switch (json) {
    case 0:
      return GiftRequestStatus.requestPending;
    case 1:
      return GiftRequestStatus.requestConfirmed;
    case 2:
      return GiftRequestStatus.requestCanceledByGiver;
    case 3:
      return GiftRequestStatus.requestCanceledByRequester;
    case 4:
      return GiftRequestStatus.requestComplete;
    case 5:
      return GiftRequestStatus.requestDelivered;
    default:
      return GiftRequestStatus.requestPending;
  }
}

int notificationTypeToJson(NotificationType notificationType) {
  switch (notificationType) {
    case NotificationType.giftGiver:
      return 0;
    case NotificationType.giftAsk:
      return 1;
    default:
      return -1;
  }
}

NotificationType notificationTypeFromJson(int json) {
  switch (json) {
    case 0:
      return NotificationType.giftGiver;
    case 1:
      return NotificationType.giftAsk;
    default:
      return NotificationType.error;
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

int giftAskTypeToJson(GiftAskType giftAskType) {
  switch (giftAskType) {
    case GiftAskType.food:
      return 0;
    case GiftAskType.medicine:
      return 1;
    case GiftAskType.others:
      return 2;
    case GiftAskType.error:
      return 3;
  }
}

GiftAskType giftAskTypeFromJson(int json) {
  switch (json) {
    case 0:
      return GiftAskType.food;
    case 1:
      return GiftAskType.medicine;
    case 2:
      return GiftAskType.others;
    default:
      return GiftAskType.error;
  }
}

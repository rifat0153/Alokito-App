import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../gift_ask_request.dart/gift_ask_request.dart';
import '../gift_request/gift_request.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class MyNotification with _$MyNotification {
  const factory MyNotification.data({
    required String id,
    required String text,
    String? user,
    required String relatedDocId,
    required String notificationType,
    @JsonKey(fromJson: giftRequestDocFromJson) GiftRequest? giftRequestDoc,
    @JsonKey(fromJson: giftAskRequestDocFromJson) GiftAskRequest? giftAskRequestDoc,
    required DateTime createdAt,
  }) = _MyNotification;

  factory MyNotification.fromJson(Map<String, dynamic> json) => _$MyNotificationFromJson(json);
}

GiftRequest? giftRequestDocFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  } else {
    return GiftRequest.fromJson(json);
  }
}

GiftAskRequest? giftAskRequestDocFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  } else {
    return GiftAskRequest.fromJson(json);
  }
}

@freezed
class MyNotificationListStatus with _$MyNotificationListStatus {
  const factory MyNotificationListStatus.data(List<MyNotification> notificationList) = Data;
  const factory MyNotificationListStatus.empty() = Empty;
  const factory MyNotificationListStatus.loading() = Loading;
  const factory MyNotificationListStatus.error(String message) = Error;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../gift/gift.dart';
import '../gift_ask/gift_ask.dart';

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
    @JsonKey(fromJson: giftDocFromJson) Gift? giftDoc,
    @JsonKey(fromJson: giftAskDocFromJson) GiftAsk? giftAskDoc,
    required DateTime createdAt,
  }) = _MyNotification;

  factory MyNotification.fromJson(Map<String, dynamic> json) => _$MyNotificationFromJson(json);
}

Gift? giftDocFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  } else {
    return Gift.fromJson(json);
  }
}

GiftAsk? giftAskDocFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  } else {
    return GiftAsk.fromJson(json);
  }
}

@freezed
class MyNotificationListStatus with _$MyNotificationListStatus {
  const factory MyNotificationListStatus.data(List<MyNotification> notificationList) = Data;
  const factory MyNotificationListStatus.empty() = Empty;
  const factory MyNotificationListStatus.loading() = Loading;
  const factory MyNotificationListStatus.error(String message) = Error;
}

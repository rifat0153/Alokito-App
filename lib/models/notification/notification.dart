import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../json_converters.dart';
import '../my_enums.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class MyNotification with _$MyNotification {
  const factory MyNotification.data({
    required String id,
    required String text,
    @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson) required NotificationType notificationType,
    required String releatedDocId,
    required DateTime createdAt,
  }) = _MyNotification;

  factory MyNotification.fromJson(Map<String, dynamic> json) => _$MyNotificationFromJson(json);
}

@freezed
class NotificationListStatus with _$NotificationListStatus {
  const factory NotificationListStatus.data(List<MyNotification> myNotification) = Data;
  const factory NotificationListStatus.empty() = Empty;
  const factory NotificationListStatus.loading() = Loading;
  const factory NotificationListStatus.error(String message) = Error;
}

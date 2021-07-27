import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class MyNotification with _$MyNotification {
  const factory MyNotification.data({
    required String id,
    required String text,
    @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
        required NotificationType notificationType,
    required String releatedDocId,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _MyNotification;

  factory MyNotification.fromJson(Map<String, dynamic> json) => _$MyNotificationFromJson(json);
}

@freezed
class NotificationListStatus with _$NotificationListStatus {
  const factory NotificationListStatus.data(List<MyNotification> myNotification) = Data;
  const factory NotificationListStatus.loading() = Loading;
  const factory NotificationListStatus.error(String message) = Error;
}

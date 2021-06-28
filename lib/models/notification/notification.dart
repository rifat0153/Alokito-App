import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification.loading() = Loading;

  const factory Notification.data({
    String? id,
    required String text,
    @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
        required NotificationType notificationType,
    required String releatedDocId,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}

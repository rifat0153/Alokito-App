// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyNotification _$_$_MyNotificationFromJson(Map<String, dynamic> json) {
  return _$_MyNotification(
    id: json['id'] as String,
    text: json['text'] as String,
    notificationType: notificationTypeFromJson(json['notificationType'] as int),
    releatedDocId: json['releatedDocId'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_MyNotificationToJson(_$_MyNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'notificationType': notificationTypeToJson(instance.notificationType),
      'releatedDocId': instance.releatedDocId,
      'createdAt': instance.createdAt.toIso8601String(),
    };

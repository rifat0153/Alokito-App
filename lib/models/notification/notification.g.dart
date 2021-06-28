// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Loading _$_$LoadingFromJson(Map<String, dynamic> json) {
  return _$Loading();
}

Map<String, dynamic> _$_$LoadingToJson(_$Loading instance) =>
    <String, dynamic>{};

_$_Notification _$_$_NotificationFromJson(Map<String, dynamic> json) {
  return _$_Notification(
    id: json['id'] as String?,
    text: json['text'] as String,
    notificationType: notificationTypeFromJson(json['notificationType'] as int),
    releatedDocId: json['releatedDocId'] as String,
  );
}

Map<String, dynamic> _$_$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'notificationType': notificationTypeToJson(instance.notificationType),
      'releatedDocId': instance.releatedDocId,
    };

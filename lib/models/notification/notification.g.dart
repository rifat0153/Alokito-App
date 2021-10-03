// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyNotification _$_$_MyNotificationFromJson(Map<String, dynamic> json) {
  return _$_MyNotification(
    id: json['id'] as String,
    text: json['text'] as String,
    releatedDocId: json['releatedDocId'] as String,
    notificationType: json['notificationType'] as String,
    giftDoc: giftDocFromJson(json['giftDoc'] as Map<String, dynamic>?),
    giftAskDoc: giftAskDocFromJson(json['giftAskDoc'] as Map<String, dynamic>?),
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_MyNotificationToJson(_$_MyNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'releatedDocId': instance.releatedDocId,
      'notificationType': instance.notificationType,
      'giftDoc': instance.giftDoc,
      'giftAskDoc': instance.giftAskDoc,
      'createdAt': instance.createdAt.toIso8601String(),
    };

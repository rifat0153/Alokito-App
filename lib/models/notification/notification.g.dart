// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyNotification _$$_MyNotificationFromJson(Map<String, dynamic> json) =>
    _$_MyNotification(
      id: json['id'] as String,
      text: json['text'] as String,
      user: json['user'] as String?,
      relatedDocId: json['relatedDocId'] as String,
      notificationType: json['notificationType'] as String,
      giftRequestDoc: giftRequestDocFromJson(
          json['giftRequestDoc'] as Map<String, dynamic>?),
      giftAskRequestDoc: giftAskRequestDocFromJson(
          json['giftAskRequestDoc'] as Map<String, dynamic>?),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MyNotificationToJson(_$_MyNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'user': instance.user,
      'relatedDocId': instance.relatedDocId,
      'notificationType': instance.notificationType,
      'giftRequestDoc': instance.giftRequestDoc,
      'giftAskRequestDoc': instance.giftAskRequestDoc,
      'createdAt': instance.createdAt.toIso8601String(),
    };

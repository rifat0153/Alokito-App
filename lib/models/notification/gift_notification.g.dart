// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftNotification _$_$_GiftNotificationFromJson(Map<String, dynamic> json) {
  return _$_GiftNotification(
    id: json['id'] as String?,
    giftNotificationType:
        giftNotificationTypeFromJson(json['giftNotificationType'] as int),
    notification: json['notification'] as String,
  );
}

Map<String, dynamic> _$_$_GiftNotificationToJson(
        _$_GiftNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftNotificationType':
          giftNotificationTypeToJson(instance.giftNotificationType),
      'notification': instance.notification,
    };

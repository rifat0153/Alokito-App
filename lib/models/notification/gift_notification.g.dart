// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftNotification _$_$_GiftNotificationFromJson(Map<String, dynamic> json) {
  return _$_GiftNotification(
    id: json['id'] as String?,
    requesterName: json['requesterName'] as String,
    requesterUid: json['requesterUid'] as String,
    giverName: json['giverName'] as String,
    giverUid: json['giverUid'] as String,
    giftType: giftTypeFromJson(json['giftType'] as int),
    notificationType:
        giftNotificationTypeFromJson(json['notificationType'] as int),
  );
}

Map<String, dynamic> _$_$_GiftNotificationToJson(
        _$_GiftNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requesterName': instance.requesterName,
      'requesterUid': instance.requesterUid,
      'giverName': instance.giverName,
      'giverUid': instance.giverUid,
      'giftType': giftTypeToJson(instance.giftType),
      'notificationType': giftNotificationTypeToJson(instance.notificationType),
    };

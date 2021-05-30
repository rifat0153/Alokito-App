// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftNotification _$_$_GiftNotificationFromJson(Map<String, dynamic> json) {
  return _$_GiftNotification(
    id: json['id'] as String?,
    giftId: json['giftId'] as String,
    requesterName: json['requesterName'] as String,
    requesterUid: json['requesterUid'] as String,
    requesterMessage: json['requesterMessage'] as String,
    giverName: json['giverName'] as String,
    giverUid: json['giverUid'] as String,
    giftLocation: json['giftLocation'] as String,
    giftArea: json['giftArea'] as String,
    giverJoinedAt: timestampFromJson(json['giverJoinedAt'] as Timestamp),
    requesterJoinedAt:
        timestampFromJson(json['requesterJoinedAt'] as Timestamp),
    giftType: giftTypeFromJson(json['giftType'] as int),
    notificationType:
        giftNotificationTypeFromJson(json['notificationType'] as int),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftNotificationToJson(
        _$_GiftNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftId': instance.giftId,
      'requesterName': instance.requesterName,
      'requesterUid': instance.requesterUid,
      'requesterMessage': instance.requesterMessage,
      'giverName': instance.giverName,
      'giverUid': instance.giverUid,
      'giftLocation': instance.giftLocation,
      'giftArea': instance.giftArea,
      'giverJoinedAt': timestampToJson(instance.giverJoinedAt),
      'requesterJoinedAt': timestampToJson(instance.requesterJoinedAt),
      'giftType': giftTypeToJson(instance.giftType),
      'notificationType': giftNotificationTypeToJson(instance.notificationType),
      'createdAt': timestampToJson(instance.createdAt),
    };

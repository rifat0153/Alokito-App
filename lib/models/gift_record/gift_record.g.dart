// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftRecord _$_$_GiftRecordFromJson(Map<String, dynamic> json) {
  return _$_GiftRecord(
    id: json['id'] as String?,
    giftNotification: giftNotificationFromJson(
        json['giftNotification'] as Map<String, dynamic>),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftRecordToJson(_$_GiftRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftNotification': giftNotificationToJson(instance.giftNotification),
      'createdAt': timestampToJson(instance.createdAt),
    };

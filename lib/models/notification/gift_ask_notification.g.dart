// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAskNotification _$_$_GiftAskNotificationFromJson(
    Map<String, dynamic> json) {
  return _$_GiftAskNotification(
    id: json['id'] as String?,
    giftAsk: giftAskFromJson(json['giftAsk'] as Map<String, dynamic>),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftAskNotificationToJson(
        _$_GiftAskNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftAsk': giftAskToJson(instance.giftAsk),
      'createdAt': timestampToJson(instance.createdAt),
    };

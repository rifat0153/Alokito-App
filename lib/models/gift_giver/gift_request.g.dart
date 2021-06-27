// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftReqeust _$_$_GiftReqeustFromJson(Map<String, dynamic> json) {
  return _$_GiftReqeust(
    id: json['id'] as String?,
    notificationType: notificationTypeFromJson(json['notificationType'] as int),
    giftRequestId: json['giftRequestId'] as String?,
    giftAskId: json['giftAskId'] as String?,
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftReqeustToJson(_$_GiftReqeust instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notificationType': notificationTypeToJson(instance.notificationType),
      'giftRequestId': instance.giftRequestId,
      'giftAskId': instance.giftAskId,
      'createdAt': timestampToJson(instance.createdAt),
    };

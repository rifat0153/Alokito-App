// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftReqeust _$_$_GiftReqeustFromJson(Map<String, dynamic> json) {
  return _$_GiftReqeust(
    id: json['id'] as String?,
    giftId: json['giftId'] as String,
    giftRequestStatus:
        giftRequestStatusFromJson(json['giftRequestStatus'] as int),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftReqeustToJson(_$_GiftReqeust instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftId': instance.giftId,
      'giftRequestStatus': giftRequestStatusToJson(instance.giftRequestStatus),
      'createdAt': timestampToJson(instance.createdAt),
    };

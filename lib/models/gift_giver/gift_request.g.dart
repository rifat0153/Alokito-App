// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftReqeust _$_$_GiftReqeustFromJson(Map<String, dynamic> json) {
  return _$_GiftReqeust(
    id: json['id'] as String?,
    giftId: json['giftId'] as String,
    requesterUid: json['requesterUid'] as String,
    giftFor: json['giftFor'] as int? ?? 0,
    giftType: _giftTypeFromJson(json['giftType'] as int),
    giftImageUrl: json['giftImageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    requesterPosition:
        _fromJson(json['requesterPosition'] as Map<String, dynamic>),
    requesterName: json['requesterName'] as String,
    requesterImageUrl: json['requesterImageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_GiftReqeustToJson(_$_GiftReqeust instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftId': instance.giftId,
      'requesterUid': instance.requesterUid,
      'giftFor': instance.giftFor,
      'giftType': _giftTypeToJson(instance.giftType),
      'giftImageUrl': instance.giftImageUrl,
      'giftDetails': instance.giftDetails,
      'requesterPosition': _toJson(instance.requesterPosition),
      'requesterName': instance.requesterName,
      'requesterImageUrl': instance.requesterImageUrl,
    };
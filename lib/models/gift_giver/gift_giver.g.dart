// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftGiver _$_$_GiftGiverFromJson(Map<String, dynamic> json) {
  return _$_GiftGiver(
    id: json['id'] as String?,
    giftFor: json['giftFor'] as int? ?? 0,
    userName: json['userName'] as String,
    distance: json['distance'] as int,
    giftType: _giftTypeFromJson(json['giftType'] as int),
    uid: json['uid'] as String,
    givingGiftInDays: json['givingGiftInDays'] as int,
    imageUrl: json['imageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    listingDate: json['listingDate'] as String,
    listingForDays: json['listingForDays'] as int,
    pickUpTime: json['pickUpTime'] as String,
    canLeaveOutside: json['canLeaveOutside'] as bool,
    position: _fromJson(json['position'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GiftGiverToJson(_$_GiftGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftFor': instance.giftFor,
      'userName': instance.userName,
      'distance': instance.distance,
      'giftType': _giftTypeToJson(instance.giftType),
      'uid': instance.uid,
      'givingGiftInDays': instance.givingGiftInDays,
      'imageUrl': instance.imageUrl,
      'giftDetails': instance.giftDetails,
      'listingDate': instance.listingDate,
      'listingForDays': instance.listingForDays,
      'pickUpTime': instance.pickUpTime,
      'canLeaveOutside': instance.canLeaveOutside,
      'position': _toJson(instance.position),
    };

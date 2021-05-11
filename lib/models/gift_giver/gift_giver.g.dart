// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gift _$_$_GiftFromJson(Map<String, dynamic> json) {
  return _$_Gift(
    id: json['id'] as String?,
    uid: json['uid'] as String,
    imageUrl: json['imageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    listingDate: json['listingDate'] as String,
    listingFor: json['listingFor'] as int,
    pickUpTime: _addressFromJson(json['pickUpTime'] as String),
    canLeaveOutside: json['canLeaveOutside'] as bool,
  );
}

Map<String, dynamic> _$_$_GiftToJson(_$_Gift instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'imageUrl': instance.imageUrl,
      'giftDetails': instance.giftDetails,
      'listingDate': instance.listingDate,
      'listingFor': instance.listingFor,
      'pickUpTime': _addressToJson(instance.pickUpTime),
      'canLeaveOutside': instance.canLeaveOutside,
    };

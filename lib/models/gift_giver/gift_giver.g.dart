// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftGiver _$_$_GiftGiverFromJson(Map<String, dynamic> json) {
  return _$_GiftGiver(
    id: json['id'] as String?,
    uid: json['uid'] as String,
    imageUrl: json['imageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    listingDate: json['listingDate'] as String,
    listingFor: json['listingFor'] as int,
    pickUpTime: _pickedTimeFromJson(json['pickUpTime'] as Timestamp),
    canLeaveOutside: json['canLeaveOutside'] as bool,
    position: _fromJson(json['position'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GiftGiverToJson(_$_GiftGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'imageUrl': instance.imageUrl,
      'giftDetails': instance.giftDetails,
      'listingDate': instance.listingDate,
      'listingFor': instance.listingFor,
      'pickUpTime': _pickedTimeToJson(instance.pickUpTime),
      'canLeaveOutside': instance.canLeaveOutside,
      'position': _toJson(instance.position),
    };

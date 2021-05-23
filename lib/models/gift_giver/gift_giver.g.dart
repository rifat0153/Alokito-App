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
    userRating: json['userRating'] as int,
    userImageUrl: json['userImageUrl'] as String,
    userFullName: json['userFullName'] as String,
    userPosition: _fromJson(json['userPosition'] as Map<String, dynamic>),
    distance: json['distance'] as int,
    giftType: _giftTypeFromJson(json['giftType'] as int),
    uid: json['uid'] as String,
    givingGiftInDays: json['givingGiftInDays'] as int,
    location: json['location'] as String,
    area: json['area'] as String,
    imageUrl: json['imageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    userCreatedAt: _pickedTimeFromJson(json['userCreatedAt'] as Timestamp),
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
      'userRating': instance.userRating,
      'userImageUrl': instance.userImageUrl,
      'userFullName': instance.userFullName,
      'userPosition': _toJson(instance.userPosition),
      'distance': instance.distance,
      'giftType': _giftTypeToJson(instance.giftType),
      'uid': instance.uid,
      'givingGiftInDays': instance.givingGiftInDays,
      'location': instance.location,
      'area': instance.area,
      'imageUrl': instance.imageUrl,
      'giftDetails': instance.giftDetails,
      'userCreatedAt': _pickedTimeToJson(instance.userCreatedAt),
      'listingDate': instance.listingDate,
      'listingForDays': instance.listingForDays,
      'pickUpTime': instance.pickUpTime,
      'canLeaveOutside': instance.canLeaveOutside,
      'position': _toJson(instance.position),
    };

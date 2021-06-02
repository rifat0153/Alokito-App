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
    userAvgRating: (json['userAvgRating'] as num).toDouble(),
    userTotRating: (json['userTotRating'] as num).toDouble(),
    userRatingSum: (json['userRatingSum'] as num).toDouble(),
    userImageUrl: json['userImageUrl'] as String,
    userFullName: json['userFullName'] as String,
    userPosition:
        myPositionFromJson(json['userPosition'] as Map<String, dynamic>),
    distance: json['distance'] as int,
    giftType: giftTypeFromJson(json['giftType'] as int),
    uid: json['uid'] as String,
    givingGiftInDays: json['givingGiftInDays'] as int,
    area: json['area'] as String,
    location: json['location'] as String,
    imageUrl: json['imageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    userCreatedAt: timestampFromJson(json['userCreatedAt'] as Timestamp),
    listingDate: json['listingDate'] as String,
    listingForDays: json['listingForDays'] as int,
    pickUpTime: timestampFromJson(json['pickUpTime'] as Timestamp),
    canLeaveOutside: json['canLeaveOutside'] as bool,
    position: myPositionFromJson(json['position'] as Map<String, dynamic>),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftGiverToJson(_$_GiftGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftFor': instance.giftFor,
      'userName': instance.userName,
      'userAvgRating': instance.userAvgRating,
      'userTotRating': instance.userTotRating,
      'userRatingSum': instance.userRatingSum,
      'userImageUrl': instance.userImageUrl,
      'userFullName': instance.userFullName,
      'userPosition': myPositionToJson(instance.userPosition),
      'distance': instance.distance,
      'giftType': giftTypeToJson(instance.giftType),
      'uid': instance.uid,
      'givingGiftInDays': instance.givingGiftInDays,
      'area': instance.area,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'giftDetails': instance.giftDetails,
      'userCreatedAt': timestampToJson(instance.userCreatedAt),
      'listingDate': instance.listingDate,
      'listingForDays': instance.listingForDays,
      'pickUpTime': timestampToJson(instance.pickUpTime),
      'canLeaveOutside': instance.canLeaveOutside,
      'position': myPositionToJson(instance.position),
      'createdAt': timestampToJson(instance.createdAt),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gift _$_$_GiftFromJson(Map<String, dynamic> json) {
  return _$_Gift(
    id: json['id'] as String?,
    listingForDays: json['listingForDays'] as int,
    canLeaveOutside: json['canLeaveOutside'] as bool,
    userId: json['userId'] as String,
    user: localUserFromMap(json['user'] as Map<String, dynamic>?),
    giftDetails: json['giftDetails'] as String,
    giftType: json['giftType'] as String,
    pickUpTime: DateTime.parse(json['pickUpTime'] as String),
    geometry: geometryFromMap(json['geometry'] as Map<String, dynamic>),
    area: json['area'] as String,
    location: json['location'] as String,
    imageUrl: json['imageUrl'] as String,
    distance: (json['distance'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_GiftToJson(_$_Gift instance) => <String, dynamic>{
      'id': instance.id,
      'listingForDays': instance.listingForDays,
      'canLeaveOutside': instance.canLeaveOutside,
      'userId': instance.userId,
      'user': localUserToMap(instance.user),
      'giftDetails': instance.giftDetails,
      'giftType': instance.giftType,
      'pickUpTime': instance.pickUpTime.toIso8601String(),
      'geometry': geometryToMap(instance.geometry),
      'area': instance.area,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'distance': instance.distance,
    };

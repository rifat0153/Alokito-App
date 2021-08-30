// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftGiver _$_$_GiftGiverFromJson(Map<String, dynamic> json) {
  return _$_GiftGiver(
    id: json['id'] as String?,
    listingForDays: json['listingForDays'] as int,
    canLeaveOutside: json['canLeaveOutside'] as bool,
    user: localUserFromMap(json['user'] as Map<String, dynamic>?),
    geometry: geometryFromMap(json['geometry'] as Map<String, dynamic>),
    giftType: json['giftType'] as String,
    giftDetails: json['giftDetails'] as String,
    pickUpTime: DateTime.parse(json['pickUpTime'] as String),
    area: json['area'] as String,
    location: json['location'] as String,
    imageUrl: json['imageUrl'] as String,
    distance: (json['distance'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_GiftGiverToJson(_$_GiftGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listingForDays': instance.listingForDays,
      'canLeaveOutside': instance.canLeaveOutside,
      'user': localUserToMap(instance.user),
      'geometry': geometryToMap(instance.geometry),
      'giftType': instance.giftType,
      'giftDetails': instance.giftDetails,
      'pickUpTime': instance.pickUpTime.toIso8601String(),
      'area': instance.area,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'distance': instance.distance,
    };

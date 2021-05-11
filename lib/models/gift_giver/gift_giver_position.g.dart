// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_giver_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftGiverPosition _$_$_GiftGiverPositionFromJson(Map<String, dynamic> json) {
  return _$_GiftGiverPosition(
    geoHash: json['geoHash'] as String?,
    geoPoint: json['geoPoint'] == null
        ? null
        : MyGeoPoint.fromJson(json['geoPoint'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GiftGiverPositionToJson(
        _$_GiftGiverPosition instance) =>
    <String, dynamic>{
      'geoHash': instance.geoHash,
      'geoPoint': instance.geoPoint,
    };

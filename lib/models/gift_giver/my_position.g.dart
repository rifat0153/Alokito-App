// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyPosition _$_$_MyPositionFromJson(Map<String, dynamic> json) {
  return _$_MyPosition(
    geohash: json['geohash'] as String,
    geopoint: _geoPointFromJson(json['geopoint'] as GeoPoint),
  );
}

Map<String, dynamic> _$_$_MyPositionToJson(_$_MyPosition instance) =>
    <String, dynamic>{
      'geohash': instance.geohash,
      'geopoint': _geoPointToJson(instance.geopoint),
    };

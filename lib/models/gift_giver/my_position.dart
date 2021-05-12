import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_position.freezed.dart';
part 'my_position.g.dart';

@freezed
class MyPosition with _$MyPosition {
  const factory MyPosition({
    required String geohash,
    @JsonKey(fromJson: _geoPointFromJson, toJson: _geoPointToJson)
        required GeoPoint geopoint,
  }) = _MyPosition;

  factory MyPosition.fromJson(Map<String, dynamic> json) =>
      _$MyPositionFromJson(json);
}

GeoPoint _geoPointToJson(GeoPoint geoPoint) => geoPoint;
GeoPoint _geoPointFromJson(GeoPoint json) => json;

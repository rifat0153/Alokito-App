import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_geo_point.freezed.dart';
part 'my_geo_point.g.dart';

@freezed
class MyGeoPoint with _$MyGeoPoint{
  const factory MyGeoPoint({
    required double latitude,
    required double longitude,
  }) = _MyGeoPoint;

 factory MyGeoPoint.fromJson(Map<String, dynamic> json) => _$MyGeoPointFromJson(json);
}

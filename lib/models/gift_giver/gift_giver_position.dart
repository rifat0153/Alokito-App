import 'package:alokito_new/models/gift_giver/my_geo_point.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_giver_position.freezed.dart';
part 'gift_giver_position.g.dart';

@freezed
class GiftGiverPosition with _$GiftGiverPosition {
  const factory GiftGiverPosition({
    String? geoHash,
    MyGeoPoint? geoPoint,
  }) = _GiftGiverPosition;

  factory GiftGiverPosition.fromJson(Map<String, dynamic> json) =>
      _$GiftGiverPositionFromJson(json);
}





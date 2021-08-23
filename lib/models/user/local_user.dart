import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

LocalUser localUserFromJson(String str) => LocalUser.fromJson(json.decode(str) as Map<String, dynamic>);
String localUserToJson(LocalUser data) => json.encode(data.toJson());

@freezed
abstract class LocalUser with _$LocalUser {
  const factory LocalUser({
    String? id,
    String? uid,
    double? distance,
    required String email,
    required String userName,
    required String imageUrl,
    @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap) required Geometry geometry,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(false) bool hasNotifications,
    @Default(0) double ratingSum,
    @Default(0) double totalRating,
    @Default(0) double averageRating,
    @Default(0) double giftGiven,
    @Default(0) double giftReceived,
    @Default(false) bool hasGiftGiverRequest,
    @Default(false) bool hasGiftAskRequest,
    @Default('') String requestedGiftId,
    @Default('') String acceptedGiftId,
    @Default('user') String role,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int v,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) => _$LocalUserFromJson(json);
}

Map<String, dynamic> localUserToMap(LocalUser localUser) => localUser.toJson();
LocalUser localUserFromMap(Map<String, dynamic> json) => LocalUser.fromJson(json);

@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    @Default('Point') String type,
    String? id,
    required List<double> coordinates,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);
}

Map<String, dynamic> geometryToMap(Geometry geometry) => geometry.toJson();
Geometry geometryFromMap(Map<String, dynamic> json) => Geometry.fromJson(json);

@freezed
class LocalUserInfo with _$LocalUserInfo {
  const factory LocalUserInfo.data(LocalUser localUser) = Data;
  const factory LocalUserInfo.loading() = Loading;
  const factory LocalUserInfo.error(String message) = Error;
}

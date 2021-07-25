import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

@freezed
class LocalUser with _$LocalUser {
  const factory LocalUser({
    String? id,
    required String firstName,
    required String lastName,
    @Default(0) double ratingSum,
    @Default(0) double totalRating,
    @Default(0) double averageRating,
    required String userName,
    required String email,
    @Default(false) bool hasGiftRequest,
    @Default(false) bool hasGiftAskRequest,
    @Default('') String requestedGiftId,
    @Default('') String acceptedGiftId,
    String? imageUrl,
    @Default(false) bool hasNotifications,
    @Default('user') String role,
    @Default(0) int giftOffered,
    @Default(0) int giftReceived,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson) required MyPosition position,
    @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson) required Timestamp createdAt,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) => _$LocalUserFromJson(json);
}

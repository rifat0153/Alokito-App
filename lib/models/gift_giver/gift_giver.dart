import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_giver.freezed.dart';
part 'gift_giver.g.dart';

@freezed
class GiftGiver with _$GiftGiver {
  const factory GiftGiver({
    String? id,
    @Default(0) int giftFor,
    required String userName,
    required double userAvgRating,
    required double userTotRating,
    required double userRatingSum,
    required String userImageUrl,
    required String userFullName,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition userPosition,
    required int distance,
    @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
        required GiftType giftType,
    required String uid,
    required int givingGiftInDays,
    required String area,
    required String location,
    required String imageUrl,
    required String giftDetails,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp userCreatedAt,
    required String listingDate,
    required int listingForDays,
    // @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
    required String pickUpTime,
    required bool canLeaveOutside,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition position,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp createdAt,
  }) = _GiftGiver;

  factory GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$GiftGiverFromJson(json);
}

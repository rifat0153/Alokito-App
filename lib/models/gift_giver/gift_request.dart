import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_request.freezed.dart';
part 'gift_request.g.dart';

@freezed
class GiftReqeust with _$GiftReqeust {
  const factory GiftReqeust({
    String? id,
    required String giftId,
    required bool requestConfirmed,
    required bool requestDenied,
    @Default(false) bool requestCancelByRequester,
    required String giverUid,
    required String giftArea,
    required int giftOfferedByRequester,
    required int giftReceivedByRequester,
    required String requesterUid,
    required String requesterMessage,
    required double requesterAvgRating,
    required double requesterTotRating,
    required double requesterRatingSum,
    @Default(0) int giftFor,
    @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
        required GiftType giftType,
    required String giftImageUrl,
    required String giftDetails,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition requesterPosition,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition giftPosition,
    required String requesterName,
    required String giftGiverImageUrl,
    required String requesterImageUrl,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp createdAt,
  }) = _GiftReqeust;

  const factory GiftReqeust.loading() = Loading;
  const factory GiftReqeust.error(Object e) = Error;

  factory GiftReqeust.fromJson(Map<String, dynamic> json) =>
      _$GiftReqeustFromJson(json);
}

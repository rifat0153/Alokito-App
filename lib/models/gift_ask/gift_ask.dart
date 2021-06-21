import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_ask.freezed.dart';
part 'gift_ask.g.dart';

@freezed
class GiftAsk with _$GiftAsk {
  const factory GiftAsk({
    String? id,
    required String address,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson) required MyPosition position,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp reuqestDate,
    required int requestForNoOfPeople,
    String? prescriptionImageUrl,
    @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson) required GiftAskType giftAskType,
    required String giftTitle,
    required bool giftForSmallFamily,
    required String note,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _GiftAsk;

  factory GiftAsk.fromJson(Map<String, dynamic> json) => _$GiftAskFromJson(json);
}

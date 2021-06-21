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
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp reuqestDate,
    required int requestForNoOfPeople,
    @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson) required GiftAskType giftAskType,
    required String giftTitle,
    required bool giftForSmallFamily,
  }) = _GiftAsk;

  factory GiftAsk.fromJson(Map<String, dynamic> json) => _$GiftAskFromJson(json);
}

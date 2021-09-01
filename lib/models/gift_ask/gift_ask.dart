import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_ask.freezed.dart';
part 'gift_ask.g.dart';

@freezed
class GiftAsk with _$GiftAsk {
  const factory GiftAsk({
    String? id,
    @Default(false) bool giftCompleted,
    @Default(false) bool giftGiven,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser requester,
    required String address,
    required String area,
    required int requestForNoOfPeople,
    String? prescriptionImageUrl,
    @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
        required GiftAskType giftAskType,
    required String giftTitle,
    required bool giftForSmallFamily,
    required String note,
  }) = _GiftAsk;

  factory GiftAsk.fromJson(Map<String, dynamic> json) => _$GiftAskFromJson(json);
}


@freezed
class GiftAskListUnion with _$GiftAskListUnion{

  const factory GiftAskListUnion.data(List<GiftAsk> giftAskList) = Data;
  const factory GiftAskListUnion.empty() = Empty;
  const factory GiftAskListUnion.loading() = Loading;
  const factory GiftAskListUnion.error(Object error) = Error;

}
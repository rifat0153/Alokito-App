import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_ask_giver.freezed.dart';
part 'gift_ask_giver.g.dart';

@freezed
class GiftAskGiver with _$GiftAskGiver {
  const factory GiftAskGiver({
    String? id,
    @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson) required GiftAsk giftAsk,
    @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
        required GiftAskStatus giftAskStatus,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverrSent,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser giver,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser requester,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _GiftAskGiver;

  factory GiftAskGiver.fromJson(Map<String, dynamic> json) => _$GiftAskGiverFromJson(json);
}

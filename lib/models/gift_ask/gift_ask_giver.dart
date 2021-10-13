import 'package:freezed_annotation/freezed_annotation.dart';

import '../json_converters.dart';
import '../my_enums.dart';
import '../user/local_user.dart';

part 'gift_ask_giver.freezed.dart';
part 'gift_ask_giver.g.dart';

@freezed
class GiftAskGiver with _$GiftAskGiver {
  const factory GiftAskGiver({
    String? id,
    @Default(false) bool requestComplete,
    @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson) required GiftAskStatus giftAskStatus,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverrSent,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser giver,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser requester,
  }) = _GiftAskGiver;

  factory GiftAskGiver.fromJson(Map<String, dynamic> json) => _$GiftAskGiverFromJson(json);
}

import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_ask_giver.freezed.dart';
part 'gift_ask_giver.g.dart';

@freezed
class GiftAskGiver with _$GiftAskGiver {
  const factory GiftAskGiver({
    String? id,
     @Default(GiftAskStatus.requestPending)
    @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
        GiftAskStatus giftAskStatus,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverrSent,
  }) = _GiftAskGiver;

  factory GiftAskGiver.fromJson(Map<String, dynamic> json) => _$GiftAskGiverFromJson(json);
}

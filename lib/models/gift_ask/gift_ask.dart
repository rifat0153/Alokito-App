import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../json_converters.dart';
import '../user/local_user.dart';

part 'gift_ask.freezed.dart';
part 'gift_ask.g.dart';

enum GiftAskType { food, medicine, others }

@freezed
class GiftAsk with _$GiftAsk {
  const factory GiftAsk({
    String? id,
    @Default(false) bool giftCompleted,
    @Default(false) bool giftGiven,
    @Default('small family package') String familyType,
    @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap) required LocalUser user,
    required int requestForNoOfPeople,
    required String note,
    String? imageUrl,
    @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson) required GiftAskType giftAskType,
    @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap) required Geometry geometry,
    required String area,
    required String location,
    @Default('Default Title') String giftTitle,
    @Default(false) bool giftForSmallFamily,
  }) = _GiftAsk;

  factory GiftAsk.fromJson(Map<String, dynamic> json) => _$GiftAskFromJson(json);
}

Map<String, dynamic> giftAskToMap(GiftAsk giftAsk) => giftAsk.toJson();
GiftAsk giftAskFromMap(Map<String, dynamic> json) => GiftAsk.fromJson(json);

@freezed
class GiftAskListUnion with _$GiftAskListUnion {
  const factory GiftAskListUnion.data(List<GiftAsk> giftAskList) = Data;
  const factory GiftAskListUnion.empty() = Empty;
  const factory GiftAskListUnion.loading() = Loading;
  const factory GiftAskListUnion.error(Object error) = Error;
}

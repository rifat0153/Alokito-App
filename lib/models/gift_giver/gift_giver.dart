import 'package:alokito_new/models/user/local_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'gift_giver.freezed.dart';
part 'gift_giver.g.dart';

GiftGiver giftGiverFromJson(String str) => GiftGiver.fromJson(json.decode(str)   as Map<String, dynamic> );

String giftGiverToJson(GiftGiver data) => json.encode(data.toJson());

@freezed
abstract class GiftGiver with _$GiftGiver {
  const factory GiftGiver({
    String? id,
    required int listingForDays,
    required bool canLeaveOutside,
    required String userId,
    @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)  LocalUser? user,
    @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap) required Geometry geometry,
    required String giftType,
    required String giftDetails,
    required DateTime pickUpTime,
    required String area,
    required String location,
    required String imageUrl,
    required double distance,
  }) = _GiftGiver;

  factory GiftGiver.fromJson(Map<String, dynamic> json) => _$GiftGiverFromJson(json);
}


@freezed
class GiftGiverLoadingOption with _$GiftGiverLoadingOption{
    const factory GiftGiverLoadingOption.byLocation() = ByLocation;
  const factory GiftGiverLoadingOption.bySearch() = BySearch;

}

@freezed
class GiftGiverListUnion with _$GiftGiverListUnion {
  const factory GiftGiverListUnion.data(List<GiftGiver> giftGiverList) = Data;
  const factory GiftGiverListUnion.empty() = Empty;
  const factory GiftGiverListUnion.loading() = Loading;
  const factory GiftGiverListUnion.error(Object error) = Error;
}

Map<String, dynamic> giftGiverToMap(GiftGiver giftGiver) => giftGiver.toJson();
GiftGiver giftGiverFromMap(Map<String, dynamic> json) => GiftGiver.fromJson(json);

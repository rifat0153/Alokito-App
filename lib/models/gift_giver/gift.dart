import 'package:alokito_new/modules/gift_requester/dto/gift_dto.dart';

import '../user/local_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'gift.freezed.dart';
part 'gift.g.dart';

Gift giftFromJson(String str) => Gift.fromJson(json.decode(str)   as Map<String, dynamic> );

String giftToJson(Gift data) => json.encode(data.toJson());

@freezed
abstract class Gift with _$Gift {
  const factory Gift({
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
     double? distance,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}



Map<String, dynamic> giftToMap(Gift gift) => gift.toJson();
Gift giftFromMap(Map<String, dynamic> json) => Gift.fromJson(json);


@freezed
class GiftLoadingOption with _$GiftLoadingOption{
    const factory GiftLoadingOption.byLocation() = ByLocation;
  const factory GiftLoadingOption.bySearch() = BySearch;

}

@freezed
class GiftListState with _$GiftListState {
  const factory GiftListState.data(List<Gift> giftList) = Data;
  const factory GiftListState.empty() = Empty;
  const factory GiftListState.loading() = Loading;
  const factory GiftListState.error(Object error) = Error;
}


@freezed
class GiftListDtoState with _$GiftListDtoState{
  const factory GiftListDtoState.success(GiftDto giftDto) = DtoSuccess;
  const factory GiftListDtoState.error(Object e) = DtoError;
  const factory GiftListDtoState.loading() = DtoLoading;
}




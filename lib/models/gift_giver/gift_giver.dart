import 'package:alokito_new/models/geo.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_giver.freezed.dart';
part 'gift_giver.g.dart';

@freezed
class GiftGiver with _$GiftGiver {
  const factory GiftGiver({
    String? id,
    required int distance,
    @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
        required GiftType giftType,
    required String uid,
    required String imageUrl,
    required String giftDetails,
    required String listingDate,
    required int listingFor,
    @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
        required Timestamp pickUpTime,
    required bool canLeaveOutside,
    @JsonKey(fromJson: _fromJson, toJson: _toJson) required MyPosition position,
  }) = _GiftGiver;

  factory GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$GiftGiverFromJson(json);
}

int _giftTypeToJson(GiftType giftType) {
  switch (giftType) {
    case GiftType.anyRetailItem:
      return 0;
    case GiftType.packageFor3Days:
      return 1;
    case GiftType.packageFor7Days:
      return 2;
    case GiftType.customizedPackage:
      return 3;
  }
}

GiftType _giftTypeFromJson(int json) {
  switch (json) {
    case 0:
      return GiftType.anyRetailItem;
    case 1:
      return GiftType.packageFor3Days;
    case 2:
      return GiftType.packageFor7Days;
    case 3:
      return GiftType.customizedPackage;
    default:
      return GiftType.anyRetailItem;
  }
}

Map<String, dynamic> _toJson(MyPosition myPosition) => myPosition.toJson();
MyPosition _fromJson(Map<String, dynamic> json) => MyPosition.fromJson(json);

Timestamp _pickedTimeToJson(Timestamp pickUpTime) => pickUpTime;
Timestamp _pickedTimeFromJson(Timestamp json) => json;

Map<String, dynamic> _positionToJson(Position position) => position.toMap();
Position _positionFromJson(Position json) => json;

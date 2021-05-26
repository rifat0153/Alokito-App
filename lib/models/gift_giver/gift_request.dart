import 'package:alokito_new/models/geo.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_request.freezed.dart';
part 'gift_request.g.dart';

@freezed
class GiftReqeust with _$GiftReqeust {
  const factory GiftReqeust({
    String? id,
    required String giftId,
    required String giverUid,
    required String requesterUid,
    required String requesterMessage,
    @Default(0) int giftFor,
    @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
        required GiftType giftType,
    required String giftImageUrl,
    required String giftDetails,
    @JsonKey(fromJson: _fromJson, toJson: _toJson)
        required MyPosition requesterPosition,
    required String requesterName,
    required String giftGiverImageUrl,
    required String requesterImageUrl,
  }) = _GiftReqeust;

  const factory GiftReqeust.loading() = Loading;
  const factory GiftReqeust.error(Object e) = Error;

  factory GiftReqeust.fromJson(Map<String, dynamic> json) =>
      _$GiftReqeustFromJson(json);
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

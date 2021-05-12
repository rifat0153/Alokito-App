import 'package:alokito_new/models/geo.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_giver.freezed.dart';
part 'gift_giver.g.dart';

@freezed
class GiftGiver with _$GiftGiver {
  const factory GiftGiver({
    String? id,
    required String uid,
    required String imageUrl,
    required String giftDetails,
    required String listingDate,
    required int listingFor,
    @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
        required Timestamp pickUpTime,
    required bool canLeaveOutside,
    // @JsonKey(fromJson: _positionFromJson, toJson: _positionToJson)
    //     required Position position,
    @JsonKey(fromJson: _fromJson, toJson: _toJson) required MyPosition position,
  }) = _GiftGiver;

  factory GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$GiftGiverFromJson(json);
}

Map<String, dynamic> _toJson(MyPosition myPosition) => myPosition.toJson();
MyPosition _fromJson(String json) => json as MyPosition;

Timestamp _pickedTimeToJson(Timestamp address) => address;
Timestamp _pickedTimeFromJson(String json) => json as Timestamp;

Map<String, dynamic> _positionToJson(Position position) => position.toMap();
Position _positionFromJson(Position json) => json;

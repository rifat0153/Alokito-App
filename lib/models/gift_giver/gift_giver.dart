import 'package:alokito_new/models/geo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_giver.freezed.dart';
part 'gift_giver.g.dart';

@freezed
class Gift with _$Gift {
  const factory Gift({
    String? id,
    required String uid,
    required String imageUrl,
    required String giftDetails,
    required String listingDate,
    required int listingFor,
    @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
        required Timestamp pickUpTime,
    required bool canLeaveOutside,
    // required Position position,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}

Map<String, Timestamp> _addressToJson(Timestamp address) =>
    {'pickedTime': address};
Timestamp _addressFromJson(String json) => json as Timestamp;

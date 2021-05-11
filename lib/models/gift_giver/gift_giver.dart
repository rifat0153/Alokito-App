import 'package:alokito_new/models/geo.dart';
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
    @Default(5) int listingFor,
    required Timestamp pickUpTime,
    @Default(false) bool canLeaveOutside,
    required Position position,
  }) = _GiftGiver;

  factory GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$GiftGiverFromJson(json);
}

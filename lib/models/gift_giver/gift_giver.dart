import 'package:alokito_new/models/geo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'gift_giver.g.dart';

@JsonSerializable()
class GiftGiver {
  GiftGiver({
    this.id,
    required this.uid,
    required this.imageUrl,
    required this.giftDetails,
    required this.listingDate,
    required this.listingFor,
    required this.pickUpTime,
    this.canLeaveOutside = false,
    // required this.position,
  });

  factory GiftGiver.fromJson(Map<String, dynamic> data) =>
      _$GiftGiverFromJson(data);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  String? id;
  String uid;
  String imageUrl;
  String giftDetails;
  String listingDate;
  int listingFor;
  Timestamp pickUpTime;
  bool canLeaveOutside;
  // Position position;
}

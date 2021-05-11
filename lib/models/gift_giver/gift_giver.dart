
import 'package:alokito_new/models/gift_giver/gift_giver_position.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_giver.freezed.dart';
part 'gift_giver.g.dart';

// class GiftGiverPosition {
//   GiftGiverPosition();

//   String? geoHash;
//   GeoPoint? geoPoint;
// }

@freezed
abstract class GiftGiver with _$GiftGiver {
  const factory GiftGiver({
    String? id,
    String? uid,
    String? imageUrl,
    String? giftDetails,
    String? listingDate,
    @Default(5) int listingFor,
    String? pickUpTime,
    @Default('user') String role,
    @Default(false) canLeaveOutside,
    GiftGiverPosition? position,
  }) = _GiftGiver;

  factory GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$GiftGiverFromJson(json);

factory GiftGiver.fromJson(Map<String, dynamic> json) => _$GiftGiverFromJson(json);
}

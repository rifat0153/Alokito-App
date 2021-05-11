// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftGiver _$_$_GiftGiverFromJson(Map<String, dynamic> json) {
  return _$_GiftGiver(
    id: json['id'] as String?,
    uid: json['uid'] as String?,
    imageUrl: json['imageUrl'] as String?,
    giftDetails: json['giftDetails'] as String?,
    listingDate: json['listingDate'] as String?,
    listingFor: json['listingFor'] as int? ?? 5,
    pickUpTime: json['pickUpTime'] as String?,
    role: json['role'] as String? ?? 'user',
    canLeaveOutside: json['canLeaveOutside'] ?? false,
    position: json['position'] == null
        ? null
        : GiftGiverPosition.fromJson(json['position'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GiftGiverToJson(_$_GiftGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'imageUrl': instance.imageUrl,
      'giftDetails': instance.giftDetails,
      'listingDate': instance.listingDate,
      'listingFor': instance.listingFor,
      'pickUpTime': instance.pickUpTime,
      'role': instance.role,
      'canLeaveOutside': instance.canLeaveOutside,
      'position': instance.position,
    };

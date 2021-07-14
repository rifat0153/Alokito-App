// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAskGiver _$_$_GiftAskGiverFromJson(Map<String, dynamic> json) {
  return _$_GiftAskGiver(
    id: json['id'] as String?,
    giftAskStatus: giftAskStatusFromJson(json['giftAskStatus'] as int),
    messageForRequesterSent: json['messageForRequesterSent'] as bool? ?? false,
    messageForGiverrSent: json['messageForGiverrSent'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_GiftAskGiverToJson(_$_GiftAskGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftAskStatus': giftAskStatusToJson(instance.giftAskStatus),
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverrSent': instance.messageForGiverrSent,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAskGiver _$_$_GiftAskGiverFromJson(Map<String, dynamic> json) {
  return _$_GiftAskGiver(
    id: json['id'] as String?,
    requestComplete: json['requestComplete'] as bool? ?? false,
    giftAsk: giftAskFromJson(json['giftAsk'] as Map<String, dynamic>),
    giftAskStatus: giftAskStatusFromJson(json['giftAskStatus'] as int),
    messageForRequesterSent: json['messageForRequesterSent'] as bool? ?? false,
    messageForGiverrSent: json['messageForGiverrSent'] as bool? ?? false,
    giver: localUserFromJson(json['giver'] as String),
    requester: localUserFromJson(json['requester'] as String),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftAskGiverToJson(_$_GiftAskGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requestComplete': instance.requestComplete,
      'giftAsk': giftAskToJson(instance.giftAsk),
      'giftAskStatus': giftAskStatusToJson(instance.giftAskStatus),
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverrSent': instance.messageForGiverrSent,
      'giver': localUserToJson(instance.giver),
      'requester': localUserToJson(instance.requester),
      'createdAt': timestampToJson(instance.createdAt),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask_giver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAskGiver _$$_GiftAskGiverFromJson(Map<String, dynamic> json) =>
    _$_GiftAskGiver(
      id: json['id'] as String?,
      requestComplete: json['requestComplete'] as bool? ?? false,
      giftAskStatus: giftAskStatusFromJson(json['giftAskStatus'] as int),
      messageForRequesterSent:
          json['messageForRequesterSent'] as bool? ?? false,
      messageForGiverrSent: json['messageForGiverrSent'] as bool? ?? false,
      giver: localUserFromJson(json['giver'] as String),
      requester: localUserFromJson(json['requester'] as String),
    );

Map<String, dynamic> _$$_GiftAskGiverToJson(_$_GiftAskGiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requestComplete': instance.requestComplete,
      'giftAskStatus': giftAskStatusToJson(instance.giftAskStatus),
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverrSent': instance.messageForGiverrSent,
      'giver': localUserToJson(instance.giver),
      'requester': localUserToJson(instance.requester),
    };

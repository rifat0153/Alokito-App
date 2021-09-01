// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAsk _$_$_GiftAskFromJson(Map<String, dynamic> json) {
  return _$_GiftAsk(
    id: json['id'] as String?,
    giftCompleted: json['giftCompleted'] as bool? ?? false,
    giftGiven: json['giftGiven'] as bool? ?? false,
    requester: localUserFromJson(json['requester'] as String),
    address: json['address'] as String,
    area: json['area'] as String,
    requestForNoOfPeople: json['requestForNoOfPeople'] as int,
    prescriptionImageUrl: json['prescriptionImageUrl'] as String?,
    giftAskType: giftAskTypeFromJson(json['giftAskType'] as int),
    giftTitle: json['giftTitle'] as String,
    giftForSmallFamily: json['giftForSmallFamily'] as bool,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$_$_GiftAskToJson(_$_GiftAsk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftCompleted': instance.giftCompleted,
      'giftGiven': instance.giftGiven,
      'requester': localUserToJson(instance.requester),
      'address': instance.address,
      'area': instance.area,
      'requestForNoOfPeople': instance.requestForNoOfPeople,
      'prescriptionImageUrl': instance.prescriptionImageUrl,
      'giftAskType': giftAskTypeToJson(instance.giftAskType),
      'giftTitle': instance.giftTitle,
      'giftForSmallFamily': instance.giftForSmallFamily,
      'note': instance.note,
    };

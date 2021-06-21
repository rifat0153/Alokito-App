// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAsk _$_$_GiftAskFromJson(Map<String, dynamic> json) {
  return _$_GiftAsk(
    id: json['id'] as String?,
    reuqestDate: timestampFromJson(json['reuqestDate'] as Timestamp),
    requestForNoOfPeople: json['requestForNoOfPeople'] as int,
    giftAskType: giftAskTypeFromJson(json['giftAskType'] as int),
    giftTitle: json['giftTitle'] as String,
    giftForSmallFamily: json['giftForSmallFamily'] as bool,
  );
}

Map<String, dynamic> _$_$_GiftAskToJson(_$_GiftAsk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reuqestDate': timestampToJson(instance.reuqestDate),
      'requestForNoOfPeople': instance.requestForNoOfPeople,
      'giftAskType': giftAskTypeToJson(instance.giftAskType),
      'giftTitle': instance.giftTitle,
      'giftForSmallFamily': instance.giftForSmallFamily,
    };

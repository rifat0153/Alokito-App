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
    user: localUserNonNullFromMap(json['user'] as Map<String, dynamic>),
    area: json['area'] as String,
    location: json['location'] as String,
    geometry: geometryFromMap(json['geometry'] as Map<String, dynamic>),
    requestForNoOfPeople: json['requestForNoOfPeople'] as int,
    imageUrl: json['imageUrl'] as String?,
    giftAskType: giftAskTypeFromJson(json['giftAskType'] as String),
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
      'user': localUserNonNullToMap(instance.user),
      'area': instance.area,
      'location': instance.location,
      'geometry': geometryToMap(instance.geometry),
      'requestForNoOfPeople': instance.requestForNoOfPeople,
      'imageUrl': instance.imageUrl,
      'giftAskType': giftAskTypeToJson(instance.giftAskType),
      'giftTitle': instance.giftTitle,
      'giftForSmallFamily': instance.giftForSmallFamily,
      'note': instance.note,
    };

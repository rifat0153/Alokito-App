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
    familyType: json['familyType'] as String? ?? 'small family package',
    user: localUserNonNullFromMap(json['user'] as Map<String, dynamic>),
    requestForNoOfPeople: json['requestForNoOfPeople'] as int,
    note: json['note'] as String,
    imageUrl: json['imageUrl'] as String?,
    giftAskType: giftAskTypeFromJson(json['giftAskType'] as String),
    geometry: geometryFromMap(json['geometry'] as Map<String, dynamic>),
    area: json['area'] as String,
    location: json['location'] as String,
    giftTitle: json['giftTitle'] as String? ?? 'Default Title',
    giftForSmallFamily: json['giftForSmallFamily'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_GiftAskToJson(_$_GiftAsk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftCompleted': instance.giftCompleted,
      'giftGiven': instance.giftGiven,
      'familyType': instance.familyType,
      'user': localUserNonNullToMap(instance.user),
      'requestForNoOfPeople': instance.requestForNoOfPeople,
      'note': instance.note,
      'imageUrl': instance.imageUrl,
      'giftAskType': giftAskTypeToJson(instance.giftAskType),
      'geometry': geometryToMap(instance.geometry),
      'area': instance.area,
      'location': instance.location,
      'giftTitle': instance.giftTitle,
      'giftForSmallFamily': instance.giftForSmallFamily,
    };

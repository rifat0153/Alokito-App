// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAsk _$$_GiftAskFromJson(Map<String, dynamic> json) => _$_GiftAsk(
      id: json['id'] as String?,
      giftCompleted: json['giftCompleted'] as bool? ?? false,
      giftGiven: json['giftGiven'] as bool? ?? false,
      familyType: json['familyType'] as String? ?? 'small family package',
      user: LocalUser.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
      requestForNoOfPeople: json['requestForNoOfPeople'] as int,
      note: json['note'] as String,
      imageUrl: json['imageUrl'] as String?,
      giftAskType: giftAskTypeFromJson(json['giftAskType'] as String),
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      area: json['area'] as String,
      location: json['location'] as String,
      giftForSmallFamily: json['giftForSmallFamily'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GiftAskToJson(_$_GiftAsk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftCompleted': instance.giftCompleted,
      'giftGiven': instance.giftGiven,
      'familyType': instance.familyType,
      'user': instance.user.toJson(),
      'title': instance.title,
      'requestForNoOfPeople': instance.requestForNoOfPeople,
      'note': instance.note,
      'imageUrl': instance.imageUrl,
      'giftAskType': giftAskTypeToJson(instance.giftAskType),
      'geometry': instance.geometry.toJson(),
      'area': instance.area,
      'location': instance.location,
      'giftForSmallFamily': instance.giftForSmallFamily,
    };

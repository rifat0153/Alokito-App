// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_ask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HelpAskResponse _$$_HelpAskResponseFromJson(Map<String, dynamic> json) =>
    _$_HelpAskResponse(
      page: json['page'] as int,
      helpAsks: (json['results'] as List<dynamic>?)
              ?.map((e) => HelpAsk.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_HelpAskResponseToJson(_$_HelpAskResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.helpAsks,
    };

_$_HelpAsk _$$_HelpAskFromJson(Map<String, dynamic> json) => _$_HelpAsk(
      id: json['id'] as String?,
      creatorId: json['creatorId'] as String?,
      creator: json['creator'] == null
          ? null
          : LocalUser.fromJson(json['creator'] as Map<String, dynamic>),
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      area: json['area'] as String?,
      location: json['location'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_HelpAskToJson(_$_HelpAsk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'creator': instance.creator?.toJson(),
      'geometry': instance.geometry?.toJson(),
      'area': instance.area,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'distance': instance.distance,
    };

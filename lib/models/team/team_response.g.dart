// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamResponse _$$_TeamResponseFromJson(Map<String, dynamic> json) =>
    _$_TeamResponse(
      page: json['page'] as int,
      teams: (json['results'] as List<dynamic>?)
              ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TeamResponseToJson(_$_TeamResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.teams,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'] as String?,
      members: (json['members'] as List<dynamic>?)
              ?.map((e) => LocalUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      creatorId: json['creatorId'] as String?,
      creator: json['creator'] as String?,
      teamName: json['teamName'] as String?,
      teamDetails: json['teamDetails'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      area: json['area'] as String?,
      location: json['location'] as String?,
      imageUrl: json['imageUrl'] as String?,
      coverImageUrl: json['coverImageUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'members': instance.members.map((e) => e.toJson()).toList(),
      'creatorId': instance.creatorId,
      'creator': instance.creator,
      'teamName': instance.teamName,
      'teamDetails': instance.teamDetails,
      'geometry': instance.geometry?.toJson(),
      'area': instance.area,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'coverImageUrl': instance.coverImageUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'distance': instance.distance,
    };

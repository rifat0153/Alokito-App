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
      creatorId: json['creatorId'] as String?,
      creator: json['creator'] as String?,
      members: (json['members'] as List<dynamic>?)
              ?.map((e) => LocalUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      teamName: json['teamName'] as String?,
      summary: json['summary'] as String?,
      objective: json['objective'] as String?,
      goal: json['goal'] as String?,
      previousGoalSummary: json['previousGoalSummary'] as String?,
      previousGoalAchieved: json['previousGoalAchieved'] as bool? ?? false,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      area: json['area'] as String?,
      location: json['location'] as String?,
      imageUrl: json['imageUrl'] as String?,
      coverImageUrl: json['coverImageUrl'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      teamDetails: json['teamDetails'] as String?,
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      memberCount: json['members_count'] as int? ?? 0,
      likesCount: json['likes_count'] as int? ?? 0,
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
      'creatorId': instance.creatorId,
      'creator': instance.creator,
      'members': instance.members.map((e) => e.toJson()).toList(),
      'teamName': instance.teamName,
      'summary': instance.summary,
      'objective': instance.objective,
      'goal': instance.goal,
      'previousGoalSummary': instance.previousGoalSummary,
      'previousGoalAchieved': instance.previousGoalAchieved,
      'geometry': instance.geometry?.toJson(),
      'area': instance.area,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'coverImageUrl': instance.coverImageUrl,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'teamDetails': instance.teamDetails,
      'likes': instance.likes,
      'members_count': instance.memberCount,
      'likes_count': instance.likesCount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'distance': instance.distance,
    };

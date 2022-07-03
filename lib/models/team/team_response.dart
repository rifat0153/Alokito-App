import 'package:alokito_new/models/user/local_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'team_response.freezed.dart';
part 'team_response.g.dart';

TeamResponse teamResponseFromJson(String str) => TeamResponse.fromJson(json.decode(str));

String teamResponseToJson(TeamResponse data) => json.encode(data.toJson());

@freezed
abstract class TeamResponse with _$TeamResponse {
  const factory TeamResponse({
    required int page,
    @JsonKey(name: 'results') @Default([]) List<Team> teams,
  }) = _TeamResponse;

  factory TeamResponse.fromJson(Map<String, dynamic> json) => _$TeamResponseFromJson(json);
}

@freezed
abstract class Team with _$Team {
  @JsonSerializable(explicitToJson: true)
  const factory Team({
    String? id,
    String? creatorId,
    String? creator,
    @Default([]) List<LocalUser> members,
    String? teamName,
    String? summary,
    String? objective,
    String? goal,
    String? previousGoalSummary,
    @Default(false) bool previousGoalAchieved,
    Geometry? geometry,
    String? area,
    String? location,
    String? imageUrl,
    String? coverImageUrl,
    DateTime? startDate,
    DateTime? endDate,
    String? teamDetails,
    @Default([]) List<String> likes,
    @Default(0) @JsonKey(name: 'members_count') int memberCount,
    @Default(0) @JsonKey(name: 'likes_count') int likesCount,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? distance,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

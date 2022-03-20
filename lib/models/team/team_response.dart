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
    @Default([]) List<Team> teams,
  }) = _TeamResponse;

  factory TeamResponse.fromJson(Map<String, dynamic> json) => _$TeamResponseFromJson(json);
}

@freezed
abstract class Team with _$Team {
  @JsonSerializable(explicitToJson: true)
  const factory Team({
    String? id,
    @Default([]) List<LocalUser> members,
    String? creatorId,
    String? creator,
    String? teamName,
    String? teamDetails,
    Geometry? geometry,
    String? area,
    String? location,
    String? imageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? distance,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

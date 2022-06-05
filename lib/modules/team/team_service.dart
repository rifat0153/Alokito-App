import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get_connect.dart';

abstract class ITeamService {
  Future<List<Team>> getAllTeams({required int page, required String userId});

  Future<List<Team>> getTopTeams({int limit});

  Future<Team> createTeam({required Team team});
}

class TeamService extends GetConnect implements ITeamService {
  @override
  Future<Team> createTeam({required Team team}) async {
    print('Team: TeamService storing ${team.toJson()}');

    final Response response = await post(
      '$baseUrl/team/store',
      team.toJson(),
    ).timeout(const Duration(seconds: myTimeout));

    print('TeamService: response: ${response.body}');

    return response.body!;
  }

  @override
  Future<List<Team>> getAllTeams({required int page, required String userId, int limit = 10}) async {
    final Response<TeamResponse> response = await get(
      '$baseUrl/team?page=$page&limit=$limit&creatorId=$userId',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    print('TeamService: ${response.body}');
    print('TeamService: team length ${response.body?.teams.length}');

    return response.body!.teams;
  }

  @override
  Future<List<Team>> getTopTeams({int limit = 10}) async {
    print('TeamService: getting top team');

    final Response<TeamResponse> response = await get(
      '$baseUrl/team/top?limit=$limit',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    print('TeamService: getting top team ${response.body}');
    return response.body!.teams;

    // final teamsRes = TeamResponse.fromJson(response.body);

    // return teamsRes.teams;
  }
}

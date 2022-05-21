import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get_connect.dart';

abstract class ITeamService {
  Future<List<Team>> getAllTeams({required int page, required String userId});

  Future<Team> createTeam({required Team team});
}

class TeamService extends GetConnect implements ITeamService {
  @override
  Future<List<Team>> getAllTeams({required int page, required String userId, int limit = 10}) async {
    final Response<TeamResponse> response = await get(
      '$baseUrl/team?page=$page&limit=$limit&creatorId=$userId',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    print('TeamService: ${response.body}');

    return response.body!.teams;
  }

  @override
  Future<Team> createTeam({required Team team}) async {
    print('Team: TeamService storing ${team.toJson()}');

    final Response response = await post(
      '$baseUrl/team/store',
      team.toJson(),
    ).timeout(const Duration(seconds: myTimeout));

    print('Team: TeamService response: ${response.body}');

    return response.body!;
  }
}

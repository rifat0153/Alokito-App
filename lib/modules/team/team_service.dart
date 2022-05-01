import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get_connect.dart';

abstract class ITeamService {
  Future<List<Team>> getAllTeams({required int page, required String userId});
}

class TeamService extends GetConnect implements ITeamService {
  @override
  Future<List<Team>> getAllTeams({required int page, required String userId}) async {
    final Response<TeamResponse> response = await get(
      '$baseUrl/team?page=1&limit=10&creatorId=612b4060da0941461c28951d',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    print('TeamService: ${response.body}');

    return response.body!.teams;
  }
}

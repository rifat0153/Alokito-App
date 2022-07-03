import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get_connect.dart';

abstract class ITeamService {
  Future<List<Team>> getAllTeams({required int page, required String userId});

  Future<List<Team>> getTopTeams({int limit});

  Future<List<Team>> searchTeams(
      {required String searchTerm, required String userId, int limit});

  Future<Team> createTeam({required Team team});

  Future addLikeToTeam({required String teamId, required String userId});
}

class TeamService extends GetConnect implements ITeamService {
  @override
  Future<Team> createTeam({required Team team}) async {
    final Response response = await post(
      '$baseUrl/team/store',
      team.toJson(),
    ).timeout(const Duration(seconds: myTimeout));

    return response.body!;
  }

  @override
  Future<List<Team>> getAllTeams(
      {required int page, required String userId, int limit = 10}) async {
    final Response<TeamResponse> response = await get(
      '$baseUrl/team?page=$page&limit=$limit&creatorId=$userId',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    return response.body!.teams;
  }

  @override
  Future<List<Team>> getTopTeams({int limit = 10}) async {
    final Response<TeamResponse> response = await get(
      '$baseUrl/team/top?limit=$limit',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    return response.body!.teams;
  }

  @override
  Future<List<Team>> searchTeams({
    required String searchTerm,
    required String userId,
    int limit = 1000,
  }) async {
    final Response<TeamResponse> response = await get(
      '$baseUrl/team/search?page=1&limit=$limit&searchString=$searchTerm&creatorId=$userId',
      decoder: (data) => TeamResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    return response.body!.teams;
  }

  @override
  Future addLikeToTeam({required String teamId, required String userId}) async {
    final Response response = await post('$baseUrl/team/like', {
      "teamId": teamId,
      "userId": userId,
    }).timeout(const Duration(seconds: myTimeout));

    return response.body!;
  }
}

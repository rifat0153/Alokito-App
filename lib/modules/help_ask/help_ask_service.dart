import 'package:alokito_new/models/help_ask/help_ask.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get.dart';

abstract class IHelpAskService {
  Future<void> addHelpAsk(HelpAsk helpAsk);

  Future<List<HelpAsk>> findNearbyHelpAsk({
    required double lat,
    required double lng,
    required String userId,
    int page = 1,
    limit = 20,
    double distance = 20,
  });
}

class HelpAskService extends GetConnect implements IHelpAskService {
  @override
  Future<void> addHelpAsk(HelpAsk helpAsk) {
    // TODO: implement addHelpAsk
    throw UnimplementedError();
  }

  @override
  Future<List<HelpAsk>> findNearbyHelpAsk({
    required double lat,
    required double lng,
    required String userId,
    int page = 1,
    limit = 20,
    double distance = 20,
  }) async {
    final Response<HelpAskResponse> response = await get(
      '$baseUrl/help_ask/near?lat=$lat&lng=$lng&creatorId=$userId&maxDistance=$distance&page=$page&limit=$limit',
      decoder: (data) => HelpAskResponse.fromJson(data),
    ).timeout(const Duration(seconds: myTimeout));

    return response.body!.helpAsks;
  }
}

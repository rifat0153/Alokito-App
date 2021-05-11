import 'package:alokito_new/models/gift_giver/gift_giver.dart';

abstract class BaseGiftGiverService {
  // Future<void>

  Future<void> addGift({required double lat, required double lng});
}

import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class BaseGiftGiverService {
  // Future<void>

  Future<void> addGift();

  Future<String> getAddressFromLatLng(
      {required double lat, required double lng});

  Stream<List<GiftGiver>> giftStreamByLocation();

  Stream<List<GiftGiver>> giftStream();
}

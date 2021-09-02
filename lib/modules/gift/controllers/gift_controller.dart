import 'package:alokito_new/modules/gift/services/gift_service.dart';

import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftController extends GetxController {
  GiftService giftService = GiftService();
  final geo = Geoflutterfire();

  RxBool loading = false.obs;

  var currentUserLocation = const LatLng(0, 0).obs;
}

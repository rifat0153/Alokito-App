import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GiftController extends GetxController {
  GiftGiverService clubService = GiftGiverService();
  Rx<List<GiftGiver>> giftList = Rx<List<GiftGiver>>([]);
  var _searchRadius = 100.0.obs;
  var currentUserLocation = const LatLng(0, 0).obs;

  @override
  void onInit() async {
    var locData = await Location().getLocation();
    currentUserLocation.value = LatLng(locData.latitude!, locData.longitude!);
    print('Current user loc:  ' + currentUserLocation.value.toString());

    debounce(_searchRadius, (_) => bindGiftStream());

    super.onInit();
  }

  double get searchRadius => _searchRadius.value;

  void setSearchRadius(double rad) {
    _searchRadius.value = rad;
  }

  void bindGiftStream() {
    giftList.bindStream(clubService.giftStreamByLocation());
  }
}

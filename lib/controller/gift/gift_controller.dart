import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GiftController extends GetxController {
  GiftGiverService clubService = GiftGiverService();
  Rx<List<GiftGiver>> giftList = Rx<List<GiftGiver>>([]);
  Rx<List<GiftGiver>> filteredGiftList = Rx<List<GiftGiver>>([]);
  var _searchRadius = 100.0.obs;
  var currentUserLocation = const LatLng(0, 0).obs;

  AuthController authController = Get.find();

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
    giftList.bindStream(clubService.giftStream());

    filteredGiftList.value = List<GiftGiver>.empty();

    List<GiftGiver> tempList = [];

    giftList.value.forEach((element) {
      if (element.uid != FirebaseAuth.instance.currentUser?.uid)
        tempList.add(element);
    });

    filteredGiftList.value = tempList;
  }

  String convertGiftType(GiftType giftType) {
    switch (giftType) {
      case GiftType.anyRetailItem:
        return 'Any Retail Item';
      case GiftType.packageFor3Days:
        return 'Package for 3 days';
      case GiftType.packageFor7Days:
        return 'Package for 7 days';
      case GiftType.customizedPackage:
        return 'Custom Package';
    }
  }

  String convertGiftFor(GiftGiver giftType) {
    switch (giftType.giftFor) {
      case 0:
        return 'Small Family';
      case 1:
        return 'Large Family';
      default:
        return '';
    }
  }
}

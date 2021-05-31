import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GiftController extends GetxController {
  GiftGiverService giftService = GiftGiverService();
  RxBool loading = false.obs;
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

  void bindGiftStream() {
    giftList.bindStream(giftService.giftStreamByLocation());

    filteredGiftList.value = List<GiftGiver>.empty();

    List<GiftGiver> tempList = [];

    giftList.value.forEach((element) {
      if (element.uid != FirebaseAuth.instance.currentUser?.uid)
        tempList.add(element);
    });

    filteredGiftList.value = tempList;
  }

  double get searchRadius => _searchRadius.value;

  void setSearchRadius(double rad) {
    _searchRadius.value = rad;
  }
}

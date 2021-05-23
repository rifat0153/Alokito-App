import 'dart:io';

import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GiftAddFormController extends GetxController {
  var isUploading = false.obs;
  var giftFor = 0.obs;
  Rx<GiftType> giftType = GiftType.packageFor3Days.obs;
  var distance = 1.obs;
  var giftDetails = ''.obs;
  var givingGiftInDays = 1.obs;
  var pickUpTime = ''.obs;
  var listingFor = 5.0.obs;
  var location = ''.obs;
  var area = ''.obs;
  var canLeaveOutside = false.obs;
  var isLocationSelected = false.obs;
  var markers = List<Marker>.empty().obs;
  Rx<File> imageFile = File('').obs;

  var userLocation = LatLng(0, 0).obs;

  @override
  void onInit() {
    markers.add(Marker(
      markerId: MarkerId('1'),
      position: Get.find<GiftController>().currentUserLocation.value,
    ));
    getCurrentLocation();
    super.onInit();
  }

  void getCurrentLocation() async {
    print('In controller  ' + userLocation.value.toString());

    var locData = await Location().getLocation();
    userLocation.value = LatLng(locData.latitude!, locData.longitude!);

    print('In controller  ' + userLocation.value.toString());
  }

  void addGift() {
    if (area.value.isEmpty) {
      Get.snackbar('Gift Add Error', 'Area cant be empty',
          backgroundColor: Colors.red.withOpacity(0.5),
          duration: Duration(milliseconds: 2000));
      return;
    }
    // if (location.value.isEmpty) {
    //   Get.snackbar('Gift Add Error', 'Location cant be empty',
    //       backgroundColor: Colors.red.withOpacity(0.5));
    //   return;
    // }

    GiftGiverService().addGift();
  }
}

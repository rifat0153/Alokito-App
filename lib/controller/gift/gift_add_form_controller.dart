import 'dart:io';

import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAddFormController extends GetxController {
  Rx<GiftType> giftType = GiftType.packageFor3Days.obs;
  var distance = 1.obs;
  var giftDetails = ''.obs;
  var listingFor = 5.0.obs;
  var canLeaveOutside = false.obs;
  var isLocationSelected = false.obs;
  var markers = List<Marker>.empty().obs;
  Rx<File> imageFile = File('').obs;

  @override
  void onInit() {
    markers.add(Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.7590, 90.4119),
    ));
    super.onInit();
  }

  void addGift() {
    GiftGiverService().addGift();
  }
}

import 'dart:io';

import 'package:alokito_new/core/geocoding_helper.dart';
import 'package:alokito_new/core/location_helper.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/gift/controllers/gift_controller.dart';
import 'package:alokito_new/modules/gift/services/gift_service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAddFormController extends GetxController {
  GiftAddFormController(this.giftGiverService);

  GiftService giftGiverService;

  final isUploading = false.obs;
  final giftFor = 0.obs;
  Rx<GiftType> giftType = GiftType.packageFor3Days.obs;
  final distance = 1.obs;
  final giftDetails = ''.obs;
  final givingGiftInDays = 1.obs;
  Rx<Timestamp?> pickUpTime = Timestamp.now().obs;
  final listingFor = 5.0.obs;
  final canLeaveOutside = false.obs;
  final markers = List<Marker>.empty().obs;
  Rx<File> imageFile = File('').obs;
  final userLocation = const LatLng(0, 0).obs;
  final addressQuery = ''.obs;
  final foundAddress = ''.obs;
  final selectedAddress = ''.obs;
  final addressSelected = true.obs;
  final selectedAddressLatLng = const LatLng(0, 0).obs;
  final selectedLatLng = const LatLng(0, 0).obs;
  final selectedMapLocation = ''.obs;
  final location = ''.obs;
  final area = ''.obs;

  @override
  void onInit() {
    markers.add(Marker(
      markerId: MarkerId('1'),
      position: Get.find<GiftController>().currentUserLocation.value,
    ));

    getCurrentLocationAndSet();
    debounce(selectedLatLng, (_) => setLocationFromMapCordinates());
    super.onInit();
  }

  Future<void> addGift() async {
    if (area.value.isEmpty) {
      Get.snackbar('Gift Add Error', 'Area cant be empty',
          backgroundColor: Colors.red.withOpacity(0.5), duration: const Duration(milliseconds: 2000));
      return;
    }
    if (location.value.isEmpty) {
      Get.snackbar('Gift Add Error', 'Location cant be empty', backgroundColor: Colors.red.withOpacity(0.5));
      return;
    }

    await giftGiverService.addGift();
  }

  String showPickupTime() {
    final hour = DateTime.fromMillisecondsSinceEpoch(pickUpTime.value!.millisecondsSinceEpoch).hour;
    final min = DateTime.fromMillisecondsSinceEpoch(pickUpTime.value!.millisecondsSinceEpoch).minute;

    if (hour > 12) {
      return '${hour - 12}:$min pm';
    } else {
      return '$hour:$min am';
    }
  }

  Future<void> setLocationFromMapCordinates() async {
    final List<Placemark> placemarks =
        await GeocodingHelper.getAddressFromPosition(selectedLatLng.value.latitude, selectedLatLng.value.longitude);

    location.value = placemarks.first.country ?? 'N/A';
    area.value = placemarks.first.name ?? 'N/A';

    print('area: $area, location: $location');
  }

  void setSelectedAddress() {
    selectedAddress.value = foundAddress.value;
  }

  Future<void> getCurrentLocationAndSet() async {
    final Position position = await LocationHelper.determinePosition();
    userLocation.value = LatLng(position.latitude, position.longitude);

    print('In controller  ' + userLocation.value.toString());
  }
}

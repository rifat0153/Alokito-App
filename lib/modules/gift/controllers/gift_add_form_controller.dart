import 'dart:io';


import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/gift/controllers/gift_controller.dart';
import 'package:alokito_new/modules/gift/services/gift_service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

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

    getCurrentLocation();
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
    // From coordinates
    final coordinates = Coordinates(selectedLatLng.value.latitude, selectedLatLng.value.longitude);

    final addresses1 = await Geocoder.local.findAddressesFromCoordinates(coordinates);

    final first = addresses1.first;
    selectedMapLocation.value = ' ${first.addressLine}  ${first.subLocality}';

    location.value = first.addressLine;
    area.value = first.subLocality ?? 'N/A';

    print('area: $area, location: $location');
    print('${first.featureName} : ${first.addressLine} : ${first.subLocality}');
  }

  Future<void> setLatLngFromAddress() async {
    // From a query
    final query = '$addressQuery, Bangladesh';
    bool errorFound = false;
    Address first = Address();

    try {
      final addresses = await Geocoder.local.findAddressesFromQuery(query);
      first = addresses.first;
      print(addresses.first.addressLine);
      print('${first.featureName} : ${first.coordinates}');
    } catch (e) {
      print(e);
      errorFound = true;
    }

    if (errorFound) {
      foundAddress.value = 'No matching location';
    } else {
      foundAddress.value = first.addressLine;
      selectedAddressLatLng.value = LatLng(first.coordinates.latitude, first.coordinates.longitude);
    }

    // From coordinates
    final coordinates = Coordinates(first.coordinates.latitude, first.coordinates.longitude);
    final addresses1 = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    first = addresses1.first;
    print('${first.featureName} : ${first.addressLine}');
  }

  void setSelectedAddress() {
    selectedAddress.value = foundAddress.value;
  }

  Future<void> getCurrentLocation() async {
    print('In controller  ' + userLocation.value.toString());

    var locData = await Location().getLocation();
    userLocation.value = LatLng(locData.latitude!, locData.longitude!);

    print('In controller  ' + userLocation.value.toString());
  }
}

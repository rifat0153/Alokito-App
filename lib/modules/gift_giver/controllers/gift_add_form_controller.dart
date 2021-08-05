import 'dart:io';

import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/gift_giver/services/gift_giver_service.dart';

import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
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
  Rx<Timestamp?> pickUpTime = Timestamp.now().obs;
  var listingFor = 5.0.obs;
  var canLeaveOutside = false.obs;
  var markers = List<Marker>.empty().obs;
  Rx<File> imageFile = File('').obs;
  var userLocation = LatLng(0, 0).obs;
  var addressQuery = ''.obs;
  var foundAddress = ''.obs;
  var selectedAddress = ''.obs;
  var addressSelected = true.obs;
  var selectedAddressLatLng = LatLng(0, 0).obs;
  var selectedLatLng = LatLng(0, 0).obs;
  var selectedMapLocation = ''.obs;
  var location = ''.obs;
  var area = ''.obs;

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

  String showPickupTime() {
    var hour = DateTime.fromMillisecondsSinceEpoch(
            pickUpTime.value!.millisecondsSinceEpoch)
        .hour;
    var min = DateTime.fromMillisecondsSinceEpoch(
            pickUpTime.value!.millisecondsSinceEpoch)
        .minute;

    if (hour > 12) {
      return '${hour - 12}:$min pm';
    } else {
      return '$hour:$min am';
    }
  }

  void setLocationFromMapCordinates() async {
    print('In FROM MAP Controller');
    // From coordinates
    final coordinates = Coordinates(
        selectedLatLng.value.latitude, selectedLatLng.value.longitude);
    var addresses1 =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses1.first;
    selectedMapLocation.value = ' ${first.addressLine}  ${first.subLocality}';

    location.value = first.addressLine;
    area.value = first.subLocality ?? 'N/A';

    print('area: $area, location: $location');
    print('${first.featureName} : ${first.addressLine} : ${first.subLocality}');
  }

  void setLatLngFromAddress() async {
    // From a query
    final query = '$addressQuery, Bangladesh';
    bool errorFound = false;
    Address first = Address();

    try {
      var addresses = await Geocoder.local.findAddressesFromQuery(query);
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
      selectedAddressLatLng.value =
          LatLng(first.coordinates.latitude, first.coordinates.longitude);
    }

    // From coordinates
    final coordinates =
        Coordinates(first.coordinates.latitude, first.coordinates.longitude);
    var addresses1 =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    first = addresses1.first;
    print('${first.featureName} : ${first.addressLine}');
  }

  void setSelectedAddress() {
    selectedAddress.value = foundAddress.value;
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
    if (location.value.isEmpty) {
      Get.snackbar('Gift Add Error', 'Location cant be empty',
          backgroundColor: Colors.red.withOpacity(0.5));
      return;
    }

    GiftGiverService().addGift();
  }
}

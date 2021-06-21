import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskController extends GetxController {
  // final service

  var giftTypeOptions = ['Food', 'Medicine', 'Others'];
  var formMarker = const Marker(markerId: MarkerId('markerId'), position: LatLng(0, 0)).obs;
  var currentUserPosition = const LatLng(0, 0).obs;
  var locationAddress = ''.obs;
  Rx<LatLng> locationInLatLng = const LatLng(0, 0).obs;
  Rx<Timestamp> requestDate = Timestamp.now().obs;
  final _requestForNoOfPeople = 1.obs;
  final _selectedGiftType = 'Food'.obs;
  var giftTitle = ''.obs;
  RxBool showPrescription = false.obs;
  var precriptionImageFile = File('').obs;
  final RxBool _packageSmallFamilty = false.obs;
  var note = ''.obs;

  void setLocationFromMapCordinates() async {
    // From coordinates
    final coordinates = Coordinates(formMarker.value.position.latitude, formMarker.value.position.longitude);
    var addresses1 = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses1.first;
    locationAddress.value = ' ${first.addressLine}  ${first.subLocality}';

    var location = first.addressLine;
    locationAddress.value = location;
    var area = first.subLocality ?? 'N/A';
  }

  bool get packageSmallFamilty => _packageSmallFamilty.value;
  void togglePackageSmallFamilty() {
    _packageSmallFamilty.value = !_packageSmallFamilty.value;
  }

  int get requestForNoOfPeople => _requestForNoOfPeople.value;

  void decreseRequestForNoOfPeople() {
    _requestForNoOfPeople.value = _requestForNoOfPeople.value < 1 ? 0 : _requestForNoOfPeople.value - 1;
  }

  void increaseRequestForNoOfPeople() {
    _requestForNoOfPeople.value =
        _requestForNoOfPeople.value > 9 ? _requestForNoOfPeople.value : _requestForNoOfPeople.value + 1;
  }

  String get selectedGiftType => _selectedGiftType.value;
  void setSelectedGiftType(String newValue) {
    showPrescription.value = (newValue == 'Medicine') ? true : false;
    precriptionImageFile.value = (newValue == 'Medicine') ? precriptionImageFile.value : File('');
    _selectedGiftType.value = newValue;
  }
}

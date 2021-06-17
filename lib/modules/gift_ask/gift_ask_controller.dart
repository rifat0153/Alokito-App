import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskController extends GetxController {
  // final service

  var giftTypeOptions = ['Food', 'Medicine', 'Others'];

  var address = ''.obs;
  Rx<LatLng> locationInLatLng = LatLng(0, 0).obs;
  Rx<Timestamp> requestDate = Timestamp.now().obs;
  final _requestForNoOfPeople = 1.obs;
  final _selectedGiftType = 'Food'.obs;
  var giftTitle = ''.obs;
  RxBool showPrescription = false.obs;
  var precriptionImageFile = File('').obs;
  RxBool _packageSmallFamilty = false.obs;
  var note = ''.obs;

  bool get packageSmallFamilty => _packageSmallFamilty.value;
  void togglePackageSmallFamilty() {
    _packageSmallFamilty.value = !_packageSmallFamilty.value;
  }

  int get requestForNoOfPeople => _requestForNoOfPeople.value;

  void decreseRequestForNoOfPeople() {
    _requestForNoOfPeople.value =
        _requestForNoOfPeople.value < 1 ? 0 : _requestForNoOfPeople.value - 1;
  }

  void increaseRequestForNoOfPeople() {
    _requestForNoOfPeople.value = _requestForNoOfPeople.value > 9
        ? _requestForNoOfPeople.value
        : _requestForNoOfPeople.value + 1;
  }

  String get selectedGiftType => _selectedGiftType.value;
  void setSelectedGiftType(String newValue) {
    showPrescription.value = (newValue == 'Medicine') ? true : false;
    _selectedGiftType.value = newValue;
  }
}

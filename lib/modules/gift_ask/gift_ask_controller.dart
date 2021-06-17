import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskController extends GetxController {
  // final service
  var profileOptions = ['Show to all', 'Let me choose'];
  var giftTypeOptions = ['Food', 'Medicine', 'Others'];

  var address = ''.obs;
  Rx<LatLng> locationInLatLng = LatLng(0, 0).obs;
  Rx<Timestamp> requestDate = Timestamp.now().obs;
  var requestForNoOfPeople = 1.obs;
  var selectedGiftType = 'Food'.obs;
  var giftTitle = ''.obs;
  var selectedProfileType = 'Show to all'.obs;
  RxBool medicineSelected = false.obs;
  var precriptionImageFile = File('').obs;
  RxBool packageSmallFamilty = false.obs;
  var note = ''.obs;
}

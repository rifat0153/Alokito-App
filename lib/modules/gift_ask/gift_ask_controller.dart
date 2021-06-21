import 'dart:io';
import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:geocoder/geocoder.dart' as geocoder;

import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskController extends GetxController {
  final GiftAskService giftAskService = GiftAskService(FirebaseFirestore.instance, FirebaseStorage.instance);

  final geo = Geoflutterfire();

  var giftTypeOptions = ['Food', 'Medicine', 'Others'];
  var formMarker = const Marker(markerId: MarkerId('markerId'), position: LatLng(0, 0)).obs;
  var currentUserPosition = const LatLng(0, 0).obs;
  var address = ''.obs;
  Rx<LatLng> locationInLatLng = const LatLng(0, 0).obs;
  Rx<Timestamp> requestDate = Timestamp.now().obs;
  final _requestForNoOfPeople = 1.obs;
  final _selectedGiftType = 'Food'.obs;
  var giftTitle = ''.obs;
  RxBool showPrescription = false.obs;
  var precriptionImageFile = File('').obs;
  final RxBool _packageSmallFamilty = false.obs;
  var note = ''.obs;

  void addGift() async {
    var myLocation =
        geo.point(latitude: formMarker.value.position.latitude, longitude: formMarker.value.position.latitude);
    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition giftPosition = MyPosition(geohash: pos['geohash'] as String, geopoint: pos['geopoint'] as GeoPoint);

    GiftAsk giftAsk = GiftAsk(
      address: address.value,
      position: giftPosition,
      reuqestDate: Timestamp.now(),
      requestForNoOfPeople: requestForNoOfPeople,
      giftAskType: getGiftAskType(),
      giftTitle: giftTitle.value,
      giftForSmallFamily: _packageSmallFamilty.value,
      note: note.value,
      createdAt: Timestamp.now(),
    );
    if (showPrescription.value) {}
  }

  GiftAskType getGiftAskType() {
    if (selectedGiftType == 'Food') return GiftAskType.food;
    if (selectedGiftType == 'Medicine') return GiftAskType.medicine;
    if (selectedGiftType == 'Others') return GiftAskType.others;
    return GiftAskType.error;
  }

  void setLocationFromMapCordinates() async {
    // From coordinates
    final coordinates = geocoder.Coordinates(formMarker.value.position.latitude, formMarker.value.position.longitude);
    var addresses1 = await geocoder.Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses1.first;
    address.value = ' ${first.addressLine}  ${first.subLocality}';

    var location = first.addressLine;
    address.value = location;
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

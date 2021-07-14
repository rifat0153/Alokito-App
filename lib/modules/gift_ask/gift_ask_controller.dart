import 'dart:async';
import 'dart:io';
import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:geocoder/geocoder.dart' as geocoder;

import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GiftAskController extends GetxController {
  final GiftAskService giftAskService =
      GiftAskService(FirebaseFirestore.instance, FirebaseStorage.instance, Geoflutterfire());
  final geo = Geoflutterfire();

  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;
  final RxDouble searchRadius = 50.0.obs;
  Rx<List<GiftAsk>> giftRequestList = Rx<List<GiftAsk>>([]);
  Rx<List<GiftAsk>> filteredGiftRequestList = Rx<List<GiftAsk>>([]);

  // GiftASk Form data control value
  RxBool loading = false.obs;
  var giftTypeOptions = ['Food', 'Medicine', 'Others'];
  var formMarker = const Marker(markerId: MarkerId('markerId'), position: LatLng(0, 0)).obs;
  var currentUserPosition = const LatLng(23, 90).obs;
  var address = ''.obs;
  var area = ''.obs;
  Rx<LatLng> locationInLatLng = const LatLng(0, 0).obs;
  Rx<Timestamp> requestDate = Timestamp.now().obs;
  final _requestForNoOfPeople = 1.obs;
  final _selectedGiftType = 'Food'.obs;
  var giftTitle = ''.obs;
  RxBool showPrescription = false.obs;
  var precriptionImageFile = File('').obs;
  final RxBool _packageSmallFamilty = false.obs;
  var note = ''.obs;

  StreamSubscription? streamSubscription;

  @override
  void onInit() async {
    streamSubscription = giftRequestList.listen((docList) {
      filteredGiftRequestList.value = [];

      docList.forEach((doc) {
        //filtering logic goes here
        // if (doc.giftTitle == 'Medicine')
        filteredGiftRequestList.value = [...filteredGiftRequestList.value, doc];
      });

      _updateMarkers(docList);
    });

    bindLocationData();
    bindGiftRequestStream();
    debounce(searchRadius, (_) => bindGiftRequestStream());

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();

    streamSubscription?.cancel();
    giftRequestList.close();
    filteredGiftRequestList.close();
  }

  void _updateMarkers(List<GiftAsk> documentList) {
    markers.value = <MarkerId, Marker>{};

    documentList.forEach((GiftAsk giftAsk) {
      if (giftAsk.id == Get.find<AuthController>().currentUser.value.id) return;

      final GeoPoint point = giftAsk.position.geopoint;

      var userPoint = geo.point(
          latitude: currentUserPosition.value.latitude, longitude: currentUserPosition.value.longitude);

      var distance = userPoint.distance(lat: point.latitude, lng: point.longitude);

      _addMarker(point.latitude, point.longitude, distance);
    });
  }

  void _addMarker(double lat, double lng, double distance) {
    final id = MarkerId(lat.toString() + lng.toString());
    final _marker = Marker(
      markerId: id,
      position: LatLng(lat, lng),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
    );

    markers[id] = _marker;
  }

  void bindLocationData() async {
    LocationData loc = await Location().getLocation();
    currentUserPosition.value = LatLng(loc.latitude!, loc.longitude!);
    formMarker.value = Marker(markerId: MarkerId('123'), position: currentUserPosition.value);

    setLocationFromMapCordinates();
    print('GiftAskController: ' + currentUserPosition.value.toString());
  }

  void setSearchRadius(double newRadius) {
    searchRadius.value = newRadius;
    bindLocationData();
    bindGiftRequestStream();
  }

  void bindGiftRequestStream() {
    bindLocationData();

    giftRequestList.bindStream(giftAskService.giftAskRequestStream(
      latitude: currentUserPosition.value.latitude,
      longitude: currentUserPosition.value.longitude,
      searchRadius: searchRadius.value,
      userId: Get.find<AuthController>().currentUser.value.id ?? '',
    ));
  }

  // FIREBASE REQUESTS
  Future<void> addGift() async {
    loading.value = true;

    var myLocation = geo.point(
        latitude: formMarker.value.position.latitude, longitude: formMarker.value.position.longitude);
    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition giftPosition =
        MyPosition(geohash: pos['geohash'] as String, geopoint: pos['geopoint'] as GeoPoint);

    GiftAsk giftAsk = GiftAsk(
      requester: Get.find<AuthController>().currentUser.value,
      giftAskStatus: GiftAskStatus.requestPending,
      address: address.value,
      area: area.value,
      position: giftPosition,
      reuqestDate: Timestamp.now(),
      requestForNoOfPeople: requestForNoOfPeople,
      giftAskType: getGiftAskType(),
      giftTitle: giftTitle.value,
      giftForSmallFamily: _packageSmallFamilty.value,
      note: note.value,
      createdAt: Timestamp.now(),
    );

    String userId = Get.find<AuthController>().currentUser.value.id ?? '';
    bool giftExists = await giftAskService.findGiftById(userId);
    if (giftExists) {
      loading.value = false;
      return showSuccessOrErrorBottomSheet(!giftExists, 'No request exists', 'Only one request at a time');
    }

    String prescriptionUrl = '';
    if (showPrescription.value && precriptionImageFile.value.path.isNotEmpty) {
      prescriptionUrl = await giftAskService.uploadImageAndGetDownloadUrl(precriptionImageFile.value);
    }

    giftAsk = giftAsk.copyWith(prescriptionImageUrl: prescriptionUrl);

    bool status = await giftAskService.addGift(giftAsk: giftAsk, userId: userId);
    loading.value = false;

    showSuccessOrErrorBottomSheet(status, 'Success: Gift request added', 'Something went wrong');
  }

  Future<void> findGiftExistsOrNot({required String giftAskId}) async {
    var responseStatus = await giftAskService.findGiftById(giftAskId);

    showSuccessOrErrorBottomSheet(responseStatus, 'gift exists', 'gift does not exists');
  }

  GiftAskType getGiftAskType() {
    if (selectedGiftType == 'Food') return GiftAskType.food;
    if (selectedGiftType == 'Medicine') return GiftAskType.medicine;
    if (selectedGiftType == 'Others') return GiftAskType.others;
    return GiftAskType.error;
  }

  void setLocationFromMapCordinates() async {
    // From coordinates
    final coordinates =
        geocoder.Coordinates(formMarker.value.position.latitude, formMarker.value.position.longitude);
    var addresses1 = await geocoder.Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses1.first;
    address.value = ' ${first.addressLine}  ${first.subLocality}';

    var location = first.addressLine;
    address.value = location;
    area.value = first.adminArea ?? 'N/A';

    print(area.value);
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

  void showSuccessOrErrorBottomSheet(bool status, String successMessage, String errorMessage) async {
    if (status) {
      Get.back();

      await Get.bottomSheet(
        Container(
          height: 50,
          child: Center(
            child: Text(
              successMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      );
    } else {
      await Get.bottomSheet(
        Container(
          height: 50,
          child: Center(
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.redAccent,
      );
    }
  }
}

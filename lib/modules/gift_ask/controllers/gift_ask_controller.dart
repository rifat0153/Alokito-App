import 'dart:async';
import 'dart:io';
import '../../../core/location/geocoding_helper.dart';
import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/my_enums.dart';
import '../../auth/controllers/auth_controller.dart';
import '../services/gift_ask_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskController extends GetxController {
  final GiftAskService giftAskService =
      GiftAskService(FirebaseFirestore.instance, FirebaseStorage.instance);

  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;
  final RxDouble searchRadius = 50.0.obs;
  Rx<GiftAskListUnion> giftRequestList = const GiftAskListUnion.loading().obs;
  Rx<GiftAskListUnion> filteredGiftRequestList = const GiftAskListUnion.loading().obs;

  // GiftASk Form data control value
  RxBool loading = false.obs;
  RxBool hasError = false.obs;

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
    streamSubscription = giftRequestList.listen((docListUnion) {
      docListUnion.when(data: (docList) {
        filteredGiftRequestList.value = const GiftAskListUnion.loading();

        for (var doc in docList) {
          if (doc.id != Get.find<AuthController>().currentUser.value.id && !doc.giftCompleted) {
            List<GiftAsk> tempFilteredList = [
              ...filteredGiftRequestList.value.maybeWhen(data: (data) => data, orElse: () => []),
              doc
            ];
            filteredGiftRequestList.value = GiftAskListUnion.data(tempFilteredList);
          }
        }
        _updateMarkers(filteredGiftRequestList.value.maybeWhen(data: (data) => data, orElse: () => []));
      }, empty: () {
        filteredGiftRequestList.value = const GiftAskListUnion.empty();
        _updateMarkers([]);
      }, loading: () {
        filteredGiftRequestList.value = const GiftAskListUnion.loading();
        _updateMarkers([]);
      }, error: (error) {
        filteredGiftRequestList.value = GiftAskListUnion.error(error);
        _updateMarkers([]);
      });
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

  // * Delete GiftASk
  Future<void> deleteGiftAsk(GiftAsk giftAsk) async {
    try {
      await giftAskService.delete(giftAsk);
    } catch (e) {
      showSuccessOrErrorBottomSheet(false, '', 'GiftAsk could not be deleted');
    }
  }

  void _updateMarkers(List<GiftAsk> documentList) {
    markers.value = <MarkerId, Marker>{};

    documentList.forEach((GiftAsk giftAsk) {
      if (giftAsk.id == Get.find<AuthController>().currentUser.value.id) return;

      final GeoPoint point = GeoPoint(0, 2);




      _addMarker(point.latitude, point.longitude, 1);
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
    // LocationData loc = await Location().getLocation();
    var userLocation = Get.find<AuthController>().currentUserPosition.value;
    currentUserPosition.value = userLocation;
    formMarker.value = Marker(markerId: const MarkerId('123'), position: currentUserPosition.value);

    setLocationFromMapCordinates();
    print('GiftAskController: ' + currentUserPosition.value.toString());
  }

  void setSearchRadius(double newRadius) {
    searchRadius.value = newRadius;
  }

  void bindGiftRequestStream() {
    bindLocationData();

  
  }

  // FIREBASE REQUESTS
  Future<void> addGift() async {
    loading.value = true;


    GiftAsk giftAsk = GiftAsk(
      requester: Get.find<AuthController>().currentUser.value,
      address: address.value,
      area: area.value,
      requestForNoOfPeople: requestForNoOfPeople,
      giftAskType: getGiftAskType(),
      giftTitle: giftTitle.value,
      giftForSmallFamily: _packageSmallFamilty.value,
      note: note.value,
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
    try {
      final List<Placemark> placemarks = await GeocodingHelper.getAddressFromPosition(
          formMarker.value.position.latitude, formMarker.value.position.longitude);

      address.value = placemarks.first.country ?? 'N/A';
      area.value = placemarks.first.name ?? 'N/A';

      print(area.value);
    } catch (e) {}
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

  void showSuccessOrErrorBottomSheet(
    bool status,
    String successMessage,
    String errorMessage,
  ) async {
    if (status) {
      Get.back();

      await Get.bottomSheet(
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              successMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      );
    } else {
      await Get.bottomSheet(
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.redAccent,
      );
    }
  }
}

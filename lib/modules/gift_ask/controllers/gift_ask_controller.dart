import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/location/geocoding_helper.dart';
import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/user/local_user.dart';
import '../../../shared/config.dart';
import '../../../shared/my_bottomsheets.dart';
import '../../auth/controllers/auth_controller.dart';
import '../services/gift_ask_service.dart';

class GiftAskController extends GetxController {
  GiftAskController(this.giftAskService);

  final GiftAskService giftAskService;

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
  var location = ''.obs;
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
  Future<void> onInit() async {
    streamSubscription = giftRequestList.listen((docListUnion) {
      docListUnion.when(data: (docList) {
        filteredGiftRequestList.value = const GiftAskListUnion.loading();

        for (final doc in docList) {
          if (doc.id != Get.find<AuthController>().currentUser.value.id && !doc.giftCompleted) {
            final List<GiftAsk> tempFilteredList = [
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

    await bindLocationData();

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
    //  TODO
    } catch (e) {
      await MyBottomSheet.showErrorBottomSheet('GiftAsk could not be deleted');
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

  Future<void> bindLocationData() async {
    // LocationData loc = await Location().getLocation();
    final userLocation = Get.find<AuthController>().currentUserPosition.value;
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

  // ADD GiftAsk to DB
  Future<void> addGift() async {
    loading.value = true;

    final GiftAsk giftAsk = GiftAsk(
      user: Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => initialUser),
      title: giftTitle.value,
      location: location.value,
      area: area.value,
      geometry: Geometry(coordinates: [formMarker.value.position.longitude, formMarker.value.position.latitude]),
      requestForNoOfPeople: requestForNoOfPeople,
      giftAskType: getGiftAskType(),
      giftForSmallFamily: _packageSmallFamilty.value,
      note: note.value,
    );

    final String userId = Get.find<AuthController>().currentUser.value.id ?? '';

    await giftAskService.addGift(
      giftAsk: giftAsk,
      userId: userId,
      imageFile: precriptionImageFile.value,
    );

    loading.value = false;
  }


  GiftAskType getGiftAskType() {
    if (selectedGiftType == 'Food') return GiftAskType.food;
    if (selectedGiftType == 'Medicine') return GiftAskType.medicine;
    if (selectedGiftType == 'Others') return GiftAskType.others;
    return GiftAskType.food;
  }

  void setLocationFromMapCordinates() async {
    // From coordinates
    try {
      final List<Placemark> placemarks = await GeocodingHelper.getAddressFromPosition(
          formMarker.value.position.latitude, formMarker.value.position.longitude);

      location.value = placemarks.first.country ?? 'N/A';
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
    showPrescription.value = newValue == 'Medicine';
    precriptionImageFile.value = (newValue == 'Medicine') ? precriptionImageFile.value : File('');
    _selectedGiftType.value = newValue;
  }
}

import 'dart:io';

import 'package:alokito_new/models/gift/gift.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';

import '../../../core/location/geocoding_helper.dart';
import '../../../core/location/location_helper.dart';
import '../../../models/my_enums.dart';
import 'gift_controller.dart';
import '../services/gift_service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAddFormController extends GetxController {
  GiftAddFormController(this.giftGiverService);

  GiftService giftGiverService;

  final loading = false.obs;

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
      Get.snackbar('Pick a location', 'Pick a location',
          backgroundColor: Colors.red.withOpacity(0.7), duration: const Duration(milliseconds: 3000));
      return;
    }
    if (location.value.isEmpty) {
      Get.snackbar('Gift Add Error', 'Location cant be empty', backgroundColor: Colors.red.withOpacity(0.5));
      return;
    }

    loading.value = true;

    final LocalUser? currentUser =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

    final Geometry geometry = Geometry(coordinates: [selectedLatLng.value.longitude, selectedLatLng.value.latitude]);

    final gift = Gift(
      userId: currentUser!.id ?? '',
      user: currentUser,
      listingForDays: givingGiftInDays.value,
      canLeaveOutside: canLeaveOutside.value,
      geometry: geometry,
      giftType: convertGiftType(giftType.value).toLowerCase(),
      giftDetails: giftDetails.value,
      pickUpTime: DateTime.fromMicrosecondsSinceEpoch(pickUpTime.value!.microsecondsSinceEpoch),
      area: area.value,
      location: location.value,
      imageUrl: '',
      distance: 15,
    );

    await giftGiverService.addGift(gift: gift, imageFile: imageFile.value);
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

    location.value = placemarks.first.locality ?? 'N/A';
    area.value = placemarks.first.name ?? 'N/A';

    selectedMapLocation.value = '${area.value}, ${location.value}, ${placemarks.first.country}';
  }

  void setSelectedAddress() {
    selectedAddress.value = foundAddress.value;
  }

  Future<void> getCurrentLocationAndSet() async {
    final Position position = await LocationHelper.determinePosition();
    userLocation.value = LatLng(position.latitude, position.longitude);
  }
}

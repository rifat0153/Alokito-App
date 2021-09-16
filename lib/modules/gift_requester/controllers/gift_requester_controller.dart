import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_requester/services/gift_requester_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftRequesterController extends GetxController {
  GiftRequesterController(this.giftRequesterService);

  final GiftRequesterService giftRequesterService;

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);

// * load gift by location or with filtering
  Rx<GiftLoadingOption> giftRetriveOption = const GiftLoadingOption.byLocation().obs;

  Rx<int> page = 1.obs;
  Rx<int> limit = 4.obs;
  Rx<int> radius = 400.obs;
  Rx<String> searchString = ''.obs;

  Rx<GiftListUnion> giftList = const GiftListUnion.loading().obs;
  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;

  Rx<bool> allGiftsFetched = false.obs;
  Rx<LatLng> userPosition = const LatLng(0, 0).obs;
  Rx<bool> searchCalledOnce = false.obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();

    //* track user input in search field
    debounce(
      searchString,
      (_) async {
        //* reset all page value as Search string was changed
        page.value = 1;
        allGiftsFetched.value = false;

        //* if search string exists get gift by search, otherwise get gift by location only
        giftRetriveOption.value =
            searchString.value.isNotEmpty ? const GiftLoadingOption.bySearch() : const GiftLoadingOption.byLocation();

        //* set giftListState to loading
        giftList.value = const GiftListUnion.loading();

        await retrieveGifts();
      },
      time: const Duration(milliseconds: 1000),
    );
  }

  @override
  Future onReady() async {
    final Position position = await LocationHelper.determinePosition();
    userPosition.value = LatLng(position.latitude, position.longitude);

    // * Get Gifts on Page Loads 2nd frame
    await retrieveGifts();

    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        page.value += 1;
        if (allGiftsFetched.value) {
          // * Show snackbar if all gifts are fethced
          // await MyUserNotify.showAllFetchedSnackbar('you have caught up');
        } else {
          await retrieveGifts();
        }
      }
    });

    super.onReady();
  }

  //* Retrieve giftList by location from MongoDB
  Future<void> retrieveGifts() async {
    //* Search by filter called for first time, set page to 1 and giftList to loading state
    GiftListUnion newGiftListUnion = const GiftListUnion.loading();

    final currentUserId =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user.id ?? '', orElse: () => '');

    if (giftRetriveOption.value == const GiftLoadingOption.bySearch()) {
      newGiftListUnion = await giftRequesterService.getGiftByFilterDB(
        searchString.value,
        page.value.toString(),
        limit.value.toString(),
        userPosition.value.latitude,
        userPosition.value.longitude,
        radius.value.toDouble(),
        currentUserId,
      );
    } else {
      newGiftListUnion = await giftRequesterService.getGiftDB(
        page.value.toString(),
        limit.value.toString(),
        userPosition.value.latitude,
        userPosition.value.longitude,
        radius.value.toDouble(),
        currentUserId,
      );
    }

    // If Error Found stop function
    final bool error = newGiftListUnion.maybeMap(error: (e) {
      giftList.value = GiftListUnion.error(e);
      return true;
    }, orElse: () {
      return false;
    });
    if (error) return;

    final bool found = newGiftListUnion.maybeWhen(data: (data) => true, orElse: () => false);

    // First Page Load
    if (page.toInt() == 1 && found) {
      giftList.value = newGiftListUnion;

      // Set allFetched to true if lest than Limit gifts are loaded
      if (newGiftListUnion.maybeWhen(data: (data) => data.length, orElse: () => 0) < limit.value) {
        allGiftsFetched.value = true;
      }
    }
    // Not First Page Load
    else {
      final List<Gift> existingGifts = giftList.value.maybeWhen(data: (data) => data, orElse: () => []);
      final List<Gift> newGifts = newGiftListUnion.maybeWhen(data: (data) => data, orElse: () => []);

      if (newGifts.isEmpty) {
        allGiftsFetched.value = true;
      } else {
        allGiftsFetched.value = false;
      }

      // Add fethced gifts to existing gifts
      final updatedGiftList = [...existingGifts, ...newGifts];
      giftList.value = GiftListUnion.data(updatedGiftList);
    }

    _updateMarkers(giftList.value.maybeWhen(data: (giftList) => giftList, orElse: () => []));
  }

  void _updateMarkers(List<Gift> documentList) {
    markers.value = <MarkerId, Marker>{};

    for (final gift in documentList) {
      if (gift.user?.uid == Get.find<AuthController>().currentUser.value.id) return;

      // Reverse order of Coordinates , bcz mongoDB returns lng first in the array,e.g. [lng, lat]
      final GeoPoint giftPoint = GeoPoint(gift.geometry.coordinates.last, gift.geometry.coordinates.first);

      final userLocation = Get.find<AuthController>().currentUserPosition;

      final distance = LocationHelper.determineDistance(
        gift.geometry.coordinates.last,
        gift.geometry.coordinates.first,
        Get.find<AuthController>().currentUserPosition.value.latitude,
        Get.find<AuthController>().currentUserPosition.value.longitude,
      );

      _addMarker(giftPoint.latitude, giftPoint.longitude, distance, gift);
    }
  }

  Future<void> _addMarker(double lat, double lng, double distance, gift) async {
    //* Load Custom Marker
    final Uint8List markerIcon = await getBytesFromAsset('assets/images/map-dot (1).png', 50);

    final id = MarkerId(lat.toString() + lng.toString());
    final _marker = Marker(
      markerId: id,
      position: LatLng(lat, lng),
      icon: BitmapDescriptor.fromBytes(markerIcon),
      // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
      onTap: () {
        print('Tapped: ');
      },
    );

    markers[id] = _marker;
  }

  // * Create Custom Map Marker
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final ByteData data = await rootBundle.load(path);
    final ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    final ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}
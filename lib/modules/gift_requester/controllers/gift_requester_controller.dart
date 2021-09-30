import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:alokito_new/models/gift/gift.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/location/location_helper.dart';
import '../../auth/controllers/auth_controller.dart';
import '../services/gift_requester_service.dart';

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

  Rx<GiftListState> giftList = const GiftListState.loading().obs;
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
        //* reset all page value as Search string was changed, gift near data or gift search data will be loaded
        page.value = 1;
        allGiftsFetched.value = false;

        //* if search string exists get gift by search, otherwise get gift by location
        giftRetriveOption.value =
            searchString.value.isNotEmpty ? const GiftLoadingOption.bySearch() : const GiftLoadingOption.byLocation();

        //* set giftListState to loading
        giftList.value = const GiftListState.loading();

        await retrieveGifts();
      },
      time: const Duration(milliseconds: 1000),
    );
  }

  @override
  Future onReady() async {
    try {
      final Position position = await LocationHelper.determinePosition();
      userPosition.value = LatLng(position.latitude, position.longitude);
    } catch (e) {
      await MyBottomSheet.showErrorBottomSheet(
          'Location services are disabled.\nAalokito needs location service to locate nearby gift givers and requesters');
    }

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

  Future<void> bindLocationData() async {}

  // Retrieve giftList by location from MongoDB
  Future<void> retrieveGifts() async {
    // Return if all gifts are already fetched
    if (allGiftsFetched.value) {
      return;
    }

    // Search by filter called for first time, set page to 1 and giftList to loading state

    GiftListDtoState newGiftDto = const GiftListDtoState.loading();

    final currentUserId =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user.id ?? '', orElse: () => '');

    try {
      if (giftRetriveOption.value == const GiftLoadingOption.bySearch()) {
        newGiftDto = await giftRequesterService.getGiftByFilterDB(
          searchString.value,
          page.value.toString(),
          limit.value.toString(),
          userPosition.value.latitude,
          userPosition.value.longitude,
          radius.value.toDouble(),
          currentUserId,
        );
      } else {
        newGiftDto = await giftRequesterService.getGiftDB(
          page.value.toString(),
          limit.value.toString(),
          userPosition.value.latitude,
          userPosition.value.longitude,
          radius.value.toDouble(),
          currentUserId,
        );
      }
    } catch (e) {
      await MySnackbar.showErrorSnackbar(e.toString());
    }

    newGiftDto.when(success: (data) {
      if (data.page == 1) {
        // Set data
        giftList.value = GiftListState.data(data.results);
      } else if (data.page > 1) {
        final List<Gift> oldGiftData = giftList.value.maybeWhen(data: (oldData) => oldData, orElse: () => []);

        // Append data
        giftList.value = GiftListState.data([...oldGiftData, ...data.results]);
      }

      print(data.page);
      print(data.lastPage);

      if (data.page == data.lastPage) {
        allGiftsFetched.value = true;
      }
    }, error: (e) {
      if (page.value == 1) {
        print('Page value isside if is: ${page.value}');
        giftList.value = GiftListState.error(e);
        // MySnackbar.showErrorSnackbar(e.toString());
      } else {
        print('Page value inside else is: ${page.value}');

        page.value -= 1;

        MySnackbar.showErrorSnackbar(e.toString());
      }
    }, loading: () {
      giftList.value = const GiftListState.loading();
    });

    // If Error Found stop function
    // final bool error = newGiftDto.maybeMap(error: (e) {
    //   giftList.value = GiftListState.error(e);
    //   return true;
    // }, orElse: () {
    //   return false;
    // });
    // if (error) return;

    _updateMarkers(giftList.value.maybeWhen(data: (giftList) => giftList, orElse: () => []));
  }

  void _updateMarkers(List<Gift> documentList) {
    markers.value = <MarkerId, Marker>{};

    for (final gift in documentList) {
      if (gift.user?.uid == Get.find<AuthController>().currentUser.value.id) return;

      // Reverse order of Coordinates , bcz mongoDB returns lng first in the array,e.g. [lng, lat]
      final GeoPoint giftPoint = GeoPoint(gift.geometry.coordinates.last, gift.geometry.coordinates.first);

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

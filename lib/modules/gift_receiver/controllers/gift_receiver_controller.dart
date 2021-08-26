import 'dart:async';

import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_receiver/services/gift_receiver_service.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:uuid/uuid.dart';

class GiftReceiverController extends GetxController {
  final GiftReceiverService giftReceiverService = GiftReceiverService(Geoflutterfire(), FirebaseFirestore.instance);
  final geo = Geoflutterfire();

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);

// * load gift by location or with filtering
  Rx<GiftGiverLoadingOption> giftRetriveOption = const GiftGiverLoadingOption.byLocation().obs;

  Rx<int> page = 1.obs;
  Rx<int> limit = 3.obs;
  Rx<int> radius = 400.obs;
  Rx<String> searchString = ''.obs;

  Rx<GiftGiverListUnion> giftList = const GiftGiverListUnion.loading().obs;

  Rx<bool> allGiftsFetched = false.obs;

  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;
  Rx<LatLng> userPosition = const LatLng(0, 0).obs;

  Rx<bool> searchCalledOnce = false.obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    //* track user input in search option
    debounce(
      searchString,
      (_) async {
        //* reset all page value as Search string was changed
        page.value = 1;
        allGiftsFetched.value = false;

        //* if search string exists get gift by search, otherwise get gift by location only
        giftRetriveOption.value =
            searchString.value.isNotEmpty ? const GiftGiverLoadingOption.bySearch() : const GiftGiverLoadingOption.byLocation();

        //* set giftListState to loading 
        giftList.value = const GiftGiverListUnion.loading();

        await retrieveGifts();
      },
      time: const Duration(milliseconds: 1000),
    );

    super.onInit();
  }

  @override
  Future onReady() async {
    final locData = await Location().getLocation();
    userPosition.value = LatLng(locData.latitude ?? 0, locData.longitude ?? 0);

    // * Get Gifts on Page Load
    await retrieveGifts();

    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        page.value += 1;
        if (allGiftsFetched.value) {
          MyUserNotify.showAllFetchedSnackbar('you have caught up');
        } else {
          await retrieveGifts();
        }
      }
    });

    super.onReady();
  }

  //* Retrieve giftList by location from MongoDB
  Future<void> retrieveGifts() async {
    GiftGiverListUnion giftListUnion = const GiftGiverListUnion.loading();

    if (giftRetriveOption.value == const GiftGiverLoadingOption.bySearch()) {
      //* Search by filter called for first time, set page to 1 and giftList to loading state

      giftListUnion = await giftReceiverService.getGiftByFilterDB(
        searchString.value,
        page.value.toString(),
        limit.value.toString(),
        userPosition.value.latitude,
        userPosition.value.longitude,
        radius.value.toDouble(),
      );
    } else {
      giftListUnion = await giftReceiverService.getGiftDB(
        page.value.toString(),
        limit.value.toString(),
        userPosition.value.latitude,
        userPosition.value.longitude,
        radius.value.toDouble(),
      );
    }

    final bool found = giftListUnion.when(data: (data) => true, empty: () => false, loading: () => false, error: (e) => false);

    if (page.toInt() == 1 && found) {
      giftList.value = giftListUnion;
    } else {
      final List<GiftGiver> existingGifts = giftList.value.maybeWhen(data: (data) => data, orElse: () => []);
      final List<GiftGiver> newGifts = giftListUnion.maybeWhen(data: (data) => data, orElse: () => []);

      if (newGifts.isEmpty) {
        allGiftsFetched.value = true;
      } else {
        allGiftsFetched.value = false;
      }

      final updatedGiftList = [...existingGifts, ...newGifts];
      giftList.value = GiftGiverListUnion.data(updatedGiftList);
    }


    _updateMarkers(giftList.value.maybeWhen(data: (data) => data, orElse: () => []));
  }

  void _updateMarkers(List<GiftGiver> documentList) {
    markers.value = <MarkerId, Marker>{};

    for (final giftGiver in documentList) {
      if (giftGiver.user.uid == Get.find<AuthController>().currentUser.value.id) return;

      // * Reverse order , bcz mongoDB returns lng first then lat
      final GeoPoint point = GeoPoint(giftGiver.geometry.coordinates.last, giftGiver.geometry.coordinates.first);

      final userLocation = Get.find<AuthController>().currentUserPosition;
      final userPoint = geo.point(latitude: userLocation.value.latitude, longitude: userLocation.value.longitude);

      final distance = userPoint.distance(lat: point.latitude, lng: point.longitude);

      _addMarker(point.latitude, point.longitude, distance);
    }
  }

  void _addMarker(double lat, double lng, double distance) {
    print('Add marker called');

    final id = MarkerId(lat.toString() + lng.toString());
    final _marker = Marker(
      markerId: id,
      position: LatLng(lat, lng),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
    );

    markers[id] = _marker;
  }

  Future<GiftReceiverNotificationUnion> getGift(String id) async {
    try {
      print('GiftReceiverController: getGift call made');
      GiftReceiverNotificationUnion docUnion = await giftReceiverService.getGiftRequest(id: id);

      return docUnion;
    } catch (e) {
      return GiftReceiverNotificationUnion.error(e);
    }
  }

  Future<void> changeMessageSentStatus({
    required GiftReceiver giftReceiver,
    required bool isRequester,
  }) async {
    isRequester
        ? await giftReceiverService.updateGiftReceiver(giftReceiver: giftReceiver.copyWith(messageForGiverrSent: true))
        : await giftReceiverService.updateGiftReceiver(giftReceiver: giftReceiver.copyWith(messageForRequesterSent: true));
  }

  Future<void> cancelGiftRequest(GiftReceiver giftReceiver, GiftReceiverStatus giftReceiverStatus) async {
    await giftReceiverService.updateGiftReceiver(giftReceiver: giftReceiver.copyWith(giftReceiverStatus: giftReceiverStatus));
  }

  Future<void> confirmGiftRequest(GiftReceiver giftReceiver) async {
    await giftReceiverService.updateGiftReceiver(
        giftReceiver: giftReceiver.copyWith(giftReceiverStatus: const GiftReceiverStatus.confirmed()));
  }

  // * Add Gift Reuqest
  Future<void> addGiftRequestAndNotification(GiftGiver giftGiver) async {
    var found = Get.find<AuthController>().currentUser.value.hasGiftGiverRequest;

    if (found) {
      await showSuccessOrErrorMessage(false, 'Request Already Found', '', 'One request per user at a time');
      return;
    }
    String uuid = const Uuid().v4();
    String docId = '${Get.find<AuthController>().currentUser.value.id}.${giftGiver.id}';

    GiftReceiver giftReceiver = GiftReceiver(
      id: docId,
      giftReceiverStatus: const GiftReceiverStatus.pending(),
      comment: requesterMessage.value,
      giftGiver: giftGiver,
      requester: Get.find<AuthController>().currentUser.value,
      createdAt: Timestamp.now(),
    );

    var result = await giftReceiverService.addGiftRequest(giftReceiver: giftReceiver);

    await showSuccessOrErrorMessage(result, 'Gift Add', 'Request Added', 'Something went wrong');
  }

  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}

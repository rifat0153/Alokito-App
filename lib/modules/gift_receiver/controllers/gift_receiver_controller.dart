import 'dart:async';

import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_receiver/services/gift_receiver_service.dart';
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

// * Gift info
  Rx<int> page = 1.obs;
  Rx<int> limit = 3.obs;
  Rx<int> radius = 400.obs;
  Rx<String> searchString = ''.obs;
  Rx<GiftGiverListUnion> giftList = const GiftGiverListUnion.loading().obs;
  Rx<GiftGiverListUnion> filteredGiftList = const GiftGiverListUnion.loading().obs;
  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;
  StreamSubscription? streamSubscription;
  Rx<LatLng> userPosition = const LatLng(0, 0).obs;

  final ScrollController scrollController = ScrollController();

  //  streamSubscription = giftList.listen((docListUnion) {
  //     docListUnion.when(data: (docList) {
  //       filteredGiftList.value = const GiftGiverListUnion.loading();

  //       for (var doc in docList) {
  //         if (doc.user.uid != Get.find<AuthController>().currentUser.value.id) {
  //           List<GiftGiver> tempFilteredList = [
  //             ...filteredGiftList.value.maybeWhen(data: (data) => data, orElse: () => []),
  //             doc
  //           ];
  //           filteredGiftList.value = GiftGiverListUnion.data(tempFilteredList);
  //         }
  //       }
  //       _updateMarkers(filteredGiftList.value.maybeWhen(data: (data) => data, orElse: () => []));
  //     }, empty: () {
  //       filteredGiftList.value = const GiftGiverListUnion.empty();
  //       _updateMarkers([]);
  //     }, loading: () {
  //       filteredGiftList.value = const GiftGiverListUnion.loading();
  //       _updateMarkers([]);
  //     }, error: (error) {
  //       filteredGiftList.value = GiftGiverListUnion.error(error);
  //       _updateMarkers([]);
  //     });
  //   });

  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future onReady() async {
    final locData = await Location().getLocation();
    userPosition.value = LatLng(locData.latitude ?? 0, locData.longitude ?? 0);
    print('GiftReceiverController, userPosition' + userPosition.value.toString());

    await retriveGifts();

    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        page.value += 1;
        await retriveGifts();
      }
    });

    super.onReady();
  }

  @override
  void onClose() {
    streamSubscription?.cancel();

    super.onClose();
  }

  Future<void> retriveGifts() async {
    print(radius.value);

    final GiftGiverListUnion giftListUnion = await giftReceiverService.getGiftDB(page.value.toString(), limit.value.toString(),
        userPosition.value.latitude, userPosition.value.longitude, radius.value.toDouble());

    final bool found = giftListUnion.when(data: (data) => true, empty: () => false, loading: () => false, error: (e) => false);

    if (page.toInt() == 1 && found) {
      giftList.value = giftListUnion;
    } else {
      final List<GiftGiver> existingGifts = giftList.value.maybeWhen(data: (data) => data, orElse: () => []);
      final List<GiftGiver> newGifts = giftListUnion.maybeWhen(data: (data) => data, orElse: () => []);

      final updatedGiftList = [...existingGifts, ...newGifts];
      giftList.value = GiftGiverListUnion.data(updatedGiftList);
      filteredGiftList.value = giftList.value;

      print('This is page ${page.value} data');
    }

    filteredGiftList.value = giftList.value;

    _updateMarkers(filteredGiftList.value.maybeWhen(data: (data) => data, orElse: () => []));
  }

  void _updateMarkers(List<GiftGiver> documentList) {
    markers.value = <MarkerId, Marker>{};

    documentList.forEach((GiftGiver giftGiver) {
      // if (giftGiver.id == Get.find<AuthController>().currentUser.value.id) return;

      // * Reverse order , bcz mongoDB returns lng first then lat
      final GeoPoint point = GeoPoint(giftGiver.geometry.coordinates.last, giftGiver.geometry.coordinates.first);

      final userLocation = Get.find<AuthController>().currentUserPosition;
      final userPoint = geo.point(latitude: userLocation.value.latitude, longitude: userLocation.value.longitude);

      final distance = userPoint.distance(lat: point.latitude, lng: point.longitude);

      _addMarker(point.latitude, point.longitude, distance);
    });
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
    if (result) {
      await Get.find<AuthController>().getUserInfoAndSetCurrentUser();
    }

    await showSuccessOrErrorMessage(result, 'Gift Add', 'Request Added', 'Something went wrong');
  }

  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}

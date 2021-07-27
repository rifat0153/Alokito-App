import 'dart:async';

import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GiftController extends GetxController {
  GiftGiverService giftService = GiftGiverService();
  final geo = Geoflutterfire();

  RxBool loading = false.obs;

  Rx<GiftGiverListUnion> giftList = const GiftGiverListUnion.loading().obs;
  Rx<GiftGiverListUnion> filteredGiftList = const GiftGiverListUnion.loading().obs;
  RxMap<MarkerId, Marker> markers = <MarkerId, Marker>{}.obs;

  final _searchRadius = 100.0.obs;
  var currentUserLocation = const LatLng(0, 0).obs;
  StreamSubscription? streamSubscription;

  @override
  void onInit() async {
    super.onInit();

    debounce(_searchRadius, (_) => bindGiftStream());

    streamSubscription = giftList.listen((docListUnion) {
      docListUnion.when(data: (docList) {
        filteredGiftList.value = const GiftGiverListUnion.loading();

        docList.forEach((GiftGiver doc) {
          //filtering logic goes here
          if (doc.uid != Get.find<AuthController>().currentUser.value.id) {
            List<GiftGiver> tempFilteredList = [
              ...filteredGiftList.value.maybeWhen(data: (data) => data, orElse: () => []),
              doc
            ];
            filteredGiftList.value = GiftGiverListUnion.data(tempFilteredList);
          }
        });
        _updateMarkers(filteredGiftList.value.maybeWhen(data: (data) => data, orElse: () => []));
      }, empty: () {
        filteredGiftList.value = const GiftGiverListUnion.empty();
        _updateMarkers([]);
      }, loading: () {
        filteredGiftList.value = const GiftGiverListUnion.loading();
        _updateMarkers([]);
      }, error: (error) {
        filteredGiftList.value = GiftGiverListUnion.error(error);
        _updateMarkers([]);
      });
    });

    bindLocationData();
  }

  @override
  void onClose() {
    streamSubscription?.cancel();
    filteredGiftList.close();
    giftList.close();
    super.onClose();
  }

  void _updateMarkers(List<GiftGiver> documentList) {
    markers.value = <MarkerId, Marker>{};

    documentList.forEach((GiftGiver giftAsk) {
      if (giftAsk.id == Get.find<AuthController>().currentUser.value.id) return;

      final GeoPoint point = giftAsk.position.geopoint;

      var userPoint = geo.point(
          latitude: currentUserLocation.value.latitude, longitude: currentUserLocation.value.longitude);

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
    var locData = await Location().getLocation();
    currentUserLocation.value = LatLng(locData.latitude!, locData.longitude!);
  }

  void bindGiftStream() {
    bindLocationData();

    giftList.bindStream(giftService.giftStreamByLocation());
  }

  double get searchRadius => _searchRadius.value;

  void setSearchRadius(double rad) {
    _searchRadius.value = rad;
  }
}

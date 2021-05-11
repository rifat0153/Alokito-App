import 'dart:math';

import '../controller/map/geo_controller.dart';
import '../models/geo.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeoService {
// Init firestore and geoFlutterFire
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;

  Future<void> addGeoPoint({required double lat, required double lng}) async {
    GeoFirePoint myLocation = geo.point(latitude: lat, longitude: lng);
    // GeoFirePoint center = geo.point(latitude: 23.7590, longitude: 90.4119);

    var rand = Random();
    var nmb = rand.nextInt(10000);

    DocumentReference docRef = _firestore.collection('locations').doc();

    Geo myGeo = Geo()
      ..id = docRef.id
      ..name = 'rifat $nmb'
      ..distance = myLocation.distance(lat: 23.7590, lng: 90.4119);

    myGeo.position = Position.fromMap(myLocation.data as Map<String, dynamic>);

    await docRef.set(myGeo.toMap());
  }

  Stream<List<Geo>> locationStream() {
// Create a geoFirePoint
    GeoFirePoint center = geo.point(latitude: 23.7590, longitude: 90.4119);
    GeoController geoController = Get.find();

    var collectionReference = _firestore.collection('locations');
    var stream = geo
        .collection(collectionRef: collectionReference)
        .within(
            center: center,
            radius: geoController.radius,
            field: 'position',
            strictMode: true)
        .map((event) => event.map((e) => Geo.fromMap(e.data() ?? {})).toList());

    return stream;
  }

// Returns Marker List
  Map<MarkerId, Marker> getMarkers() {
// Create a geoFirePoint
    GeoFirePoint center = geo.point(latitude: 23.7590, longitude: 90.4119);
    GeoController geoController = Get.find();

    var collectionReference = _firestore.collection('locations');

    Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
    var rand = Random();

    var stream = geo
        .collection(collectionRef: collectionReference)
        .within(
          center: center,
          radius: geoController.radius,
          field: 'position',
          strictMode: true,
        )
        .map((event) => event.map((e) {
              print('In geo map');
              Geo.fromMap(e.data() ?? {});
            }).toList());

    print('In getMarkers:  ' + markers.values.toString());

    return markers;
  }
}


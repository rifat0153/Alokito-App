import 'dart:typed_data';

import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

extension GeometryListToMarker on List<Geometry> {
  Future<Map<MarkerId, Marker>> toMarkerMap() async {
    Map<MarkerId, Marker> markers = {};
    final Position currentPosition = await LocationHelper.determinePosition();

    for (final geometry in this) {
      // Reverse order of Coordinates , bcz mongoDB returns lng first in the array,e.g. [lng, lat]
      final GeoPoint geometryPoint = GeoPoint(geometry.coordinates.last, geometry.coordinates.first);

      final distance = LocationHelper.determineDistance(
        geometry.coordinates.last,
        geometry.coordinates.first,
        currentPosition.latitude,
        currentPosition.longitude,
      );

      //* Load Custom Marker
      final Uint8List markerIcon = await getBytesFromAsset('assets/images/map-dot (1).png', 50);

      final lat = geometryPoint.latitude;
      final lng = geometryPoint.longitude;

      final id = MarkerId(lat.toString() + lng.toString());
      final _marker = Marker(
        markerId: id,
        position: LatLng(lat, lng),
        icon: BitmapDescriptor.fromBytes(markerIcon),
        infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
        onTap: () {
          print('Marker Tapped: ');
        },
      );

      markers[id] = _marker;
    }

    return markers;
  }

  // Future<void> _addMarker(double lat, double lng, double distance, gift) async {
  //   //* Load Custom Marker
  //   final Uint8List markerIcon = await getBytesFromAsset('assets/images/map-dot (1).png', 50);

  //   final id = MarkerId(lat.toString() + lng.toString());
  //   final _marker = Marker(
  //     markerId: id,
  //     position: LatLng(lat, lng),
  //     icon: BitmapDescriptor.fromBytes(markerIcon),
  //     // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  //     infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
  //     onTap: () {
  //       print('Tapped: ');
  //     },
  //   );

  //   markers[id] = _marker;
  // }

  // * Create Custom Map Marker
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final ByteData data = await rootBundle.load(path);
    final ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    final ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }
}

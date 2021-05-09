import 'dart:math';

import 'package:alokito_new/models/geo.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerNotifier extends ChangeNotifier {
  Map<MarkerId, Marker> markers = {};

  void addMarker(Geo geo) {
    var rand = Random();

    final id = MarkerId(rand.nextInt(1000).toString());
    final _marker = Marker(
      markerId: id,
      position: LatLng(
          geo.position.geoPoint!.latitude, geo.position.geoPoint!.longitude),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow:
          InfoWindow(title: 'latLng', snippet: 'distance ${geo.distance}'),
    );

    markers[id] = _marker;
    notifyListeners();
  }
}

class MyNumberNotifier extends ChangeNotifier {
  List<int> numberList = [5, 7];

  void addNumber() {
    numberList.add(Random().nextInt(10));
    notifyListeners();
  }
}

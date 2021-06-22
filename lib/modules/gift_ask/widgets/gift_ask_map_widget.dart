import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rxdart/rxdart.dart';

class GiftAskMapWidget extends StatefulWidget {
  static const route = '/GiftAskMapWidget';

  @override
  _GiftAskMapWidgetState createState() => _GiftAskMapWidgetState();
}

class _GiftAskMapWidgetState extends State<GiftAskMapWidget> {
// make sure to initialize before map loading

  GoogleMapController? _mapController;
  final GiftAskController giftAskController = Get.find();
  late TextEditingController _latitudeController, _longitudeController;

  // firestore init
  final _firestore = FirebaseFirestore.instance;
  late Geoflutterfire geo;
  late Stream<List<DocumentSnapshot>> stream;
  final radius = BehaviorSubject<double>.seeded(100.0);
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  @override
  void initState() {
    super.initState();

    _latitudeController = TextEditingController();
    _longitudeController = TextEditingController();

    geo = Geoflutterfire();
    // GeoFirePoint center = geo.point(latitude: 23, longitude: 90);
    GeoFirePoint center = geo.point(
      latitude: giftAskController.currentUserPosition.value.latitude,
      longitude: giftAskController.currentUserPosition.value.latitude,
    );

    stream = radius.switchMap((rad) {
      var collectionReference = _firestore.collection('gift_ask');
//          .where('name', isEqualTo: 'darshan');
      return geo
          .collection(collectionRef: collectionReference)
          .within(center: center, radius: rad, field: 'position', strictMode: true);
    });
  }

  @override
  void dispose() {
    _latitudeController.dispose();
    _longitudeController.dispose();
    radius.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('user lat: ' + giftAskController.currentUserPosition.value.latitude.toString());
    print('user long: ' + giftAskController.currentUserPosition.value.longitude.toString());

    final mediaQuery = MediaQuery.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * (1 / 2),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(23.7590, 90.4119),
                    zoom: 12.0,
                  ),
                  markers: Set<Marker>.of(markers.values),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Slider(
              min: 1,
              max: 200,
              divisions: 199,
              value: _value,
              label: _label,
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.2),
              onChanged: (double value) => changed(value),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
//      _showHome();
      //start listening after map is created
      stream.listen((List<DocumentSnapshot> documentList) {
        _updateMarkers(documentList);
      });
    });
  }

  void _showHome() {
    _mapController?.animateCamera(CameraUpdate.newCameraPosition(
      const CameraPosition(
        target: LatLng(23.7590, 90.4119),
        zoom: 12.0,
      ),
    ));
  }

  void _addMarker(double lat, double lng, double distance) {
    final id = MarkerId(lat.toString() + lng.toString());
    final _marker = Marker(
      markerId: id,
      position: LatLng(lat, lng),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
    );
    setState(() {
      markers[id] = _marker;
    });
  }

  void _updateMarkers(List<DocumentSnapshot> documentList) {
    documentList.forEach((DocumentSnapshot document) {
      // final GeoPoint point =
      // document.data()!['position']['geopoint'] as GeoPoint;

      print('IN update markerts');

      final GiftAsk giftAsk = GiftAsk.fromJson(document.data()!);
      print('In GiftAskRequestViewL');
      print(giftAsk);
      final GeoPoint point = giftAsk.position.geopoint;

      var userPoint = geo.point(
          latitude: giftAskController.currentUserPosition.value.latitude,
          longitude: giftAskController.currentUserPosition.value.longitude);

      var distance = userPoint.distance(lat: point.latitude, lng: point.longitude);
      _addMarker(point.latitude, point.longitude, distance);
    });
  }

  double _value = 20.0;
  String _label = '';

  changed(value) {
    setState(() {
      _value = value as double;
      _label = '${_value.toInt().toString()} kms';
      markers.clear();
    });
    radius.add(value as double);
  }
}

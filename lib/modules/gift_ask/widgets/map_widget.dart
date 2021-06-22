import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_core/firebase_core.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
// make sure to initialize before map loading

  GoogleMapController? _mapController;
  final GiftController giftController = Get.find();
  late TextEditingController _latitudeController, _longitudeController;

  // firestore init
  final _firestore = FirebaseFirestore.instance;
  late Geoflutterfire geo;
  late Stream<List<DocumentSnapshot>> stream;
  final radius = BehaviorSubject<double>.seeded(10.0);
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  late BitmapDescriptor customIcon;

  @override
  void initState() {
    super.initState();
    setMarker();
    _latitudeController = TextEditingController();
    _longitudeController = TextEditingController();

    geo = Geoflutterfire();
    // GeoFirePoint center = geo.point(latitude: 23, longitude: 90);
    GeoFirePoint center = geo.point(
      latitude: giftController.currentUserLocation.value.latitude,
      longitude: giftController.currentUserLocation.value.longitude,
    );

    stream = radius.switchMap((rad) {
      var collectionReference = _firestore.collection('gift_ask');
//          .where('name', isEqualTo: 'darshan');
      return geo
          .collection(collectionRef: collectionReference)
          .within(center: center, radius: rad, field: 'position', strictMode: true);
    });
  }

  void setMarker() async {
    customIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(10, 10)), 'assets/images/map-dot (1).png');
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
    print('user lat: ' + giftController.currentUserLocation.value.latitude.toString());
    print('user lat: ' + giftController.currentUserLocation.value.longitude.toString());

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
                height: mediaQuery.size.height * (1 / 3),
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

  void _addPoint(double lat, double lng) {
    GeoFirePoint geoFirePoint = geo.point(latitude: lat, longitude: lng);
    _firestore.collection('locations').add({'name': 'random name', 'position': geoFirePoint.data}).then((_) {
      print('added ${geoFirePoint.hash} successfully');
    });
  }

  //example to add geoFirePoint inside nested object
  void _addNestedPoint(double lat, double lng) {
    GeoFirePoint geoFirePoint = geo.point(latitude: lat, longitude: lng);
    _firestore.collection('nestedLocations').add({
      'name': 'random name',
      'address': {
        'location': {'position': geoFirePoint.data}
      }
    }).then((_) {
      print('added ${geoFirePoint.hash} successfully');
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
    setState(() {
      markers[id] = _marker;
    });
  }

  void _updateMarkers(List<DocumentSnapshot> documentList) {
    documentList.forEach((DocumentSnapshot document) {
      // final GeoPoint point =
      // document.data()!['position']['geopoint'] as GeoPoint;

      final GiftGiver giftGiver = GiftGiver.fromJson(document.data()!);
      final GeoPoint point = giftGiver.position.geopoint;

      var userPoint = geo.point(
          latitude: giftController.currentUserLocation.value.latitude,
          longitude: giftController.currentUserLocation.value.longitude);

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

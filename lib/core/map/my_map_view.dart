// import 'package:alokito_new/models/gift/gift.dart';

// import '../../modules/gift/controllers/gift_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MyMapView extends StatefulWidget {
//   static const route = '/mymapview';

//   @override
//   _MyMapViewState createState() => _MyMapViewState();
// }

// class _MyMapViewState extends State<MyMapView> {
// // make sure to initialize before map loading

//   GoogleMapController? _mapController;
//   final GiftController giftController = Get.find();
//   late TextEditingController _latitudeController, _longitudeController;

//   // firestore init
//   final _firestore = FirebaseFirestore.instance;
//   late Stream<List<DocumentSnapshot>> stream;
//   Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

//   late BitmapDescriptor customIcon;

//   @override
//   void initState() {
//     super.initState();
//     setMarker();
//     _latitudeController = TextEditingController();
//     _longitudeController = TextEditingController();
//   }

//   void setMarker() async {
//     customIcon =
//         await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(10, 10)), 'assets/images/map-dot (1).png');
//   }

//   @override
//   void dispose() {
//     _latitudeController.dispose();
//     _longitudeController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('user lat: ' + giftController.currentUserLocation.value.latitude.toString());
//     print('user long: ' + giftController.currentUserLocation.value.longitude.toString());

//     final mediaQuery = MediaQuery.of(context);
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Center(
//             child: Card(
//               elevation: 4,
//               margin: EdgeInsets.symmetric(vertical: 8),
//               child: SizedBox(
//                 width: mediaQuery.size.width,
//                 height: mediaQuery.size.height * (1 / 3),
//                 child: GoogleMap(
//                   onMapCreated: _onMapCreated,
//                   initialCameraPosition: const CameraPosition(
//                     target: LatLng(23.7590, 90.4119),
//                     zoom: 12.0,
//                   ),
//                   markers: Set<Marker>.of(markers.values),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 8.0),
//             child: Slider(
//               min: 1,
//               max: 200,
//               divisions: 199,
//               value: _value,
//               label: _label,
//               activeColor: Colors.blue,
//               inactiveColor: Colors.blue.withOpacity(0.2),
//               onChanged: (double value) => changed(value),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     setState(() {
//       _mapController = controller;
// //      _showHome();
//       //start listening after map is created
//       stream.listen((List<DocumentSnapshot> documentList) {
//         _updateMarkers(documentList);
//       });
//     });
//   }

//   void _showHome() {
//     _mapController?.animateCamera(CameraUpdate.newCameraPosition(
//       const CameraPosition(
//         target: LatLng(23.7590, 90.4119),
//         zoom: 12.0,
//       ),
//     ));
//   }

//   void _addPoint(double lat, double lng) {
//     _firestore.collection('locations').add({'name': 'random name', 'position': ''}).then((_) {});
//   }

//   //example to add geoFirePoint inside nested object
//   void _addNestedPoint(double lat, double lng) {
//     _firestore.collection('nestedLocations').add({'name': 'random name', 'address': {}}).then((_) {});
//   }

//   void _addMarker(double lat, double lng, double distance) {
//     final id = MarkerId(lat.toString() + lng.toString());
//     final _marker = Marker(
//       markerId: id,
//       position: LatLng(lat, lng),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
//       infoWindow: InfoWindow(title: 'latLng', snippet: '$distance km'),
//     );
//     setState(() {
//       markers[id] = _marker;
//     });
//   }

//   void _updateMarkers(List<DocumentSnapshot> documentList) {
//     documentList.forEach((DocumentSnapshot document) {
//       // final GeoPoint point =
//       // document.data()!['position']['geopoint'] as GeoPoint;

//       final Gift giftGiver = Gift.fromJson(document.data()!);
//       final GeoPoint point = GeoPoint(giftGiver.geometry.coordinates.last, giftGiver.geometry.coordinates.last);
//     });
//   }

//   double _value = 20.0;
//   String _label = '';

//   changed(value) {
//     setState(() {
//       _value = value as double;
//       _label = '${_value.toInt().toString()} kms';
//       markers.clear();
//     });
//   }
// }

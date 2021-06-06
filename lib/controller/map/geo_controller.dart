import '../../models/geo.dart';
import '../../modules/map/geo_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeoController extends GetxController {
  // Services
  Rx<GeoService> geoService = GeoService().obs;

  //Streams
  Rx<List<Geo>> geoStream = Rx<List<Geo>>([]);
  Stream<List<DocumentSnapshot>> stream = Stream.empty();
  RxMap<MarkerId, Marker> markerStream = <MarkerId, Marker>{}.obs;

  //RX  variables
  Rx<double> _radius = 10.0.obs;
  Rx<double> rad = 10.0.obs;
  Rx<LatLng> selectedPosition = LatLng(23.7590, 90.4119).obs;

  @override
  onInit() {
    super.onInit();
    var geo = Geoflutterfire();
    final _firestore = FirebaseFirestore.instance;
    var collectionReference = _firestore.collection('locations');
    GeoFirePoint center = geo.point(latitude: 23.7590, longitude: 90.4119);
    stream = geo.collection(collectionRef: collectionReference).within(
        center: center, radius: radius, field: 'position', strictMode: true);

    // bindGeoStream();
    // bindMarkerStream();
  }

  double get radius => _radius.value;
  set radius(double value) {
    _radius.value = value;
    onInit();
  }

  void bindMarkerStream() {
    markerStream.refresh();
  }

  void bindGeoStream() {
    geoStream.bindStream(geoService.value.locationStream());
    geoStream.update((val) {
      geoService.value.locationStream();
    });
  }

  disposeGeoStream() {
    geoStream.close();
  }

  void addLocation() {
    geoService.value.addGeoPoint(
        lat: selectedPosition.value.latitude,
        lng: selectedPosition.value.longitude);
  }
}

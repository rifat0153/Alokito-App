import 'geo_controller.dart';
import '../../models/geo.dart';
import '../home/home_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeoMapView extends StatefulWidget {
  GeoMapView({
    this.initialLocation = const LatLng(23.7590, 90.4119),
  });
  static const route = 'geomapview';
  final LatLng initialLocation;

  @override
  _GeoMapViewState createState() => _GeoMapViewState();
}

class _GeoMapViewState extends State<GeoMapView> {
  GeoController geoController = Get.find();
  GoogleMapController? _mapController;
  LatLng? _pickedLocation;
  bool isSelecting = true;

  void _selectLocation(LatLng position) {
    setState(() {
      _pickedLocation = position;
      geoController.selectedPosition.value = position;

      print('geoLen :  ${geoController.geoStream.value.length}');
      print('Markers len: ${geoController.markerStream.length}');
      print(geoController.selectedPosition.value.latitude);
      print(geoController.selectedPosition.value.longitude);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _mapController?.dispose();
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // _onMapCreated(_mapController!);
  //   _updateMarkers(geoController.geoStream.value);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geo Map'),
        actions: [
          if (isSelecting)
            IconButton(
              icon: Icon(Icons.check),
              onPressed: _pickedLocation == null
                  ? null
                  : () {
                      geoController.addLocation();
                      // geoController.bindGeoStream();
                      // _updateMarkers(geoController.geoStream.value);
                    },
            ),
          IconButton(
              icon: Icon(Icons.home), onPressed: () => Get.to(() => HomeView()))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => GoogleMap(
                onMapCreated: _onMapCreated,
                onTap: isSelecting ? _selectLocation : null,
                markers: Set<Marker>.of(geoController.markerStream.values),
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    widget.initialLocation.latitude,
                    widget.initialLocation.longitude,
                  ),
                  zoom: 11,
                ),
              ),
            ),
          ),
          Obx(
            () => Container(
              width: Get.size.width,
              child: Slider(
                min: 1,
                max: 20,
                divisions: 19,
                value: geoController.radius,
                label: geoController.radius.toString() + ' km',
                activeColor: Colors.blue,
                inactiveColor: Colors.blue.withOpacity(0.2),
                onChanged: (double value) {
                  geoController.radius = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
      geoController.bindMarkerStream();
    });
  }

  double _value = GeoController().radius;
  String _label = '';

  changed(value) {
    setState(() {
      _value = value as double;
      _label = '${_value.toInt().toString()} kms';
      // geoController.markers.clear();
    });
    GeoController().radius = value as double;

    // radius.add(value);
  }
}

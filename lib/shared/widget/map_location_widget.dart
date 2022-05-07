import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocationWidget extends StatefulWidget {
  const MapLocationWidget({
    Key? key,
    required this.title,
    required this.markerList,
    required this.onTap,
    required this.initialCameraPosition,
  }) : super(key: key);

  final String title;
  final Set<Marker> markerList;
  final void Function(LatLng) onTap;
  final LatLng initialCameraPosition;

  @override
  State<MapLocationWidget> createState() => MapLocationWidgetState();
}

class MapLocationWidgetState extends State<MapLocationWidget> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: widget.markerList,
        initialCameraPosition: CameraPosition(target: widget.initialCameraPosition, zoom: 16),
        onMapCreated: _controller.complete,
        onTap: widget.onTap,
      ),
    );
  }
}

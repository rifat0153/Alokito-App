import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapWithMarkersWidget extends StatelessWidget {
  MapWithMarkersWidget({
    Key? key,
    required this.markers,
    required this.initialCameraPosition,
  }) : super(key: key);

  Map<MarkerId, Marker> markers;
  CameraPosition initialCameraPosition;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
            width: mediaQuery.size.width,
            height: mediaQuery.size.height * (1 / 3),
            child: Obx(
              () => GoogleMap(
                // zoomControlsEnabled: false,
                initialCameraPosition: initialCameraPosition,
                markers: Set<Marker>.of(markers.values),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

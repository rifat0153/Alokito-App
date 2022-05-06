import 'dart:async';

import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/modules/team/team_ui_event.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';

class TeamMapLocationWidget extends StatefulWidget {
  const TeamMapLocationWidget({Key? key}) : super(key: key);

  @override
  State<TeamMapLocationWidget> createState() => TeamMapLocationWidgetState();
}

class TeamMapLocationWidgetState extends State<TeamMapLocationWidget> {
  final TeamController controller = Get.find<TeamController>();
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText('Team map'),
      ),
      body: Obx(
        () => GoogleMap(
          mapType: MapType.normal,
          // markers: controller.markerList.toSet(),
          markers: [
            Marker(
              markerId: MarkerId(controller.locationLatLng.toString()),
              position: controller.locationLatLng.value,
            )
          ].toSet(),
          initialCameraPosition: const CameraPosition(target: LatLng(23, 90), zoom: 16),
          onMapCreated: _controller.complete,
          onTap: (LatLng postion) {
            // controller.locationLatLng.value = postion;
            controller.handleUiEvent(TeamUiEvent.setLocation(postion));
            // Logger().i('Map Location in controller: ${controller.locationLatLng.value}');
          },
          // onTap: (LatLng latlng) async {
          //   Logger().e('Map Location in map: ');
          //   controller.locationLatLng.value = const LatLng(25, 95);
          //   Logger().e('Map Location in controller: ${controller.locationLatLng.value}');
          // }),
        ),
      ),
    );
  }
}

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

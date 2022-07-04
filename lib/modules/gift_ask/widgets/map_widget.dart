import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/gift_ask_controller.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  MapWidgetState createState() => MapWidgetState();
}

class MapWidgetState extends State<MapWidget> {
  final GiftAskController giftAskController = Get.find();
  final Completer<GoogleMapController> _controller = Completer();
  double zoom = 12;

  late LatLng userPosition =
      LatLng(giftAskController.currentUserPosition.value.latitude, giftAskController.currentUserPosition.value.longitude);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    giftAskController.bindLocationData();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Obx(
          () => GoogleMap(
            onMapCreated: _controller.complete,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(target: giftAskController.currentUserPosition.value, zoom: zoom),
            onTap: (LatLng latLng) async {
              giftAskController.formMarker.value = Marker(markerId: const MarkerId('markerId'), position: latLng);
              final GoogleMapController controller = await _controller.future;
              await controller.animateCamera(
                CameraUpdate.newCameraPosition(CameraPosition(target: latLng, zoom: zoom)),
              );
              giftAskController.setLocationFromMapCordinates();
            },
            markers: {giftAskController.formMarker.value},
          ),
        ),
      ),
    );
  }
}

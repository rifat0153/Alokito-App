import 'dart:async';

import 'package:alokito_new/controller/gift/gift_add_form_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:uuid/uuid.dart';

class GiftLocationWidget extends StatelessWidget {
  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 20),
            Obx(
              () => Checkbox(
                  value: controller.canLeaveOutside.value,
                  onChanged: (value) =>
                      controller.canLeaveOutside.value = value!),
            ),
            const Text(
              ' I can leave it outside your home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class GiftMapWidget extends StatefulWidget {
  @override
  State<GiftMapWidget> createState() => GiftMapWidgetState();
}

class GiftMapWidgetState extends State<GiftMapWidget> {
  final GiftAddFormController controller = Get.find();
  final Completer<GoogleMapController> _controller = Completer();
  late LatLng myLocation;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.7590, 90.4119),
    zoom: 16,
  );

  var markers = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.7590, 90.4119),
    )
  ];

  // @override

  @override
  Widget build(BuildContext context) {
    print(controller.userLocation.value);

    return Scaffold(
      // height: Get.size.height,
      // width: Get.size.width,
      appBar: AppBar(
        title: const Text('Select Gift Location'),
      ),
      body: Obx(
        () => GoogleMap(
          mapType: MapType.normal,
          markers: controller.markers.toSet(),
          initialCameraPosition:
              CameraPosition(target: controller.userLocation.value, zoom: 16),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          onTap: (LatLng postion) async {
            controller.markers.value = [];
            controller.markers.value = markers = [
              Marker(
                markerId: MarkerId(const Uuid().v4()),
                position: LatLng(postion.latitude, postion.longitude),
              ),
            ];

            print(controller.markers.first.position);
          },
        ),
      ),
    );
  }
}

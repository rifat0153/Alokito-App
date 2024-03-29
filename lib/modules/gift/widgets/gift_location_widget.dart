import 'dart:async';

import '../controllers/gift_add_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class GiftLocationWidget extends StatelessWidget {
  GiftLocationWidget({Key? key}) : super(key: key);

  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.blue,
          onPressed: () => Get.to(() => GiftMapWidget()),
          child: const Text('Pickup Location'),
        ),
        Row(
          children: [
            const SizedBox(width: 20),
            Obx(
              () => Checkbox(value: controller.canLeaveOutside.value, onChanged: (value) => controller.canLeaveOutside.value = value!),
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
  const GiftMapWidget({Key? key}) : super(key: key);

  @override
  State<GiftMapWidget> createState() => GiftMapWidgetState();
}

class GiftMapWidgetState extends State<GiftMapWidget> {
  final GiftAddFormController controller = Get.find();
  final Completer<GoogleMapController> _controller = Completer();
  late LatLng myLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Gift Location'),
      ),
      body: Obx(
        () => GoogleMap(
          mapType: MapType.normal,
          markers: controller.markers.toSet(),
          initialCameraPosition: CameraPosition(target: controller.userLocation.value, zoom: 16),
          onMapCreated: _controller.complete,
          onTap: (LatLng postion) async {
            controller.markers.value = [];
            controller.markers.value = [
              Marker(
                markerId: MarkerId(const Uuid().v4()),
                position: LatLng(postion.latitude, postion.longitude),
              ),
            ];

            controller.selectedLatLng.value = postion;
          },
        ),
      ),
    );
  }
}

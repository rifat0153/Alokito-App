import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

import '../../auth/controllers/auth_controller.dart';
import '../../../models/gift_giver/gift.dart';
import '../../../shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftDetailMapWidget extends StatelessWidget {
  GiftDetailMapWidget({required this.gift});

  final Gift gift;
  final AuthController authController = Get.find();
  final Completer<GoogleMapController> _controller = Completer();

  final List<Factory<OneSequenceGestureRecognizer>> gestureRecognizerForMap = [
    Factory<PanGestureRecognizer>(() => PanGestureRecognizer()),
    Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer()),
    Factory<TapGestureRecognizer>(() => TapGestureRecognizer()),
    Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer()),
  ];

  final markers = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.7590, 90.4119),
    )
  ];

  @override
  Widget build(BuildContext context) {
    final distanceOfGift = authController.calculateDistanceForGiftDetail(gift: gift);

    final markers = [
      Marker(
        markerId: const MarkerId('123121'),
        position: LatLng(gift.geometry.coordinates.last, gift.geometry.coordinates.first),
      )
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pick up Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('$distanceOfGift km away'),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: giftAddFormColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: Text('${gift.location}, ${gift.area} '),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    child: Card(
                      elevation: 20,
                      child: GoogleMap(
                        // mapType: MapType.normal,
                        gestureRecognizers: gestureRecognizerForMap.toSet(),
                        zoomControlsEnabled: false,
                        onMapCreated: _controller.complete,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(gift.geometry.coordinates.last, gift.geometry.coordinates.first),
                          zoom: 15,
                        ),
                        markers: markers.toSet(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

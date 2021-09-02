import 'dart:async';

import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftDetailMapWidget extends StatelessWidget {
  GiftDetailMapWidget({required this.giftGiver});

  final Gift giftGiver;
  final AuthController authController = Get.find();
  final Completer<GoogleMapController> _controller = Completer();

  final markers = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.7590, 90.4119),
    )
  ];

  @override
  Widget build(BuildContext context) {
    final distanceOfGift = authController.calculateDistanceForGiftDetail(giftGiver: giftGiver);

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
                child: Text('${giftGiver.location}, ${giftGiver.area} '),
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
                        onMapCreated: _controller.complete,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(giftGiver.geometry.coordinates.last, giftGiver.geometry.coordinates.first),
                          zoom: 15,
                        ),
                        markers: [
                          Marker(
                            markerId: const MarkerId('123121'),
                            position: LatLng(giftGiver.geometry.coordinates.last, giftGiver.geometry.coordinates.first),
                          )
                        ].toSet(),
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

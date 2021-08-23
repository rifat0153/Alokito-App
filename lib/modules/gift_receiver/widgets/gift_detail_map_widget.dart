import 'dart:async';

import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftDetailMapWidget extends StatelessWidget {
  GiftDetailMapWidget({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();
  final AuthController authController = Get.find();
  final Completer<GoogleMapController> _controller = Completer();

  var markers = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.7590, 90.4119),
    )
  ];

  @override
  Widget build(BuildContext context) {
    var distanceOfGift = authController.calculateDistanceForGiftDetail(giftGiver: giftGiver);

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
              Container(
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Card(
                      elevation: 20,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        initialCameraPosition: CameraPosition(
                          target: LatLng(1, 2),
                          zoom: 15,
                        ),
                        markers: [
                          Marker(
                            markerId: MarkerId('1'),
                            position: LatLng(1, 2),
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

import 'dart:async';

import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
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
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.7590, 90.4119),
    )
  ];

  @override
  Widget build(BuildContext context) {
    var distanceOfGift =
        authController.calculateDistanceForGiftDetail(giftGiver: giftGiver);
    var giftType = convertGiftType(giftGiver.giftType);

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
          decoration: BoxDecoration(color: GIFT_ADD_FORM_COLOR),
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
                          target: LatLng(giftGiver.position.geopoint.latitude,
                              giftGiver.position.geopoint.longitude),
                          zoom: 15,
                        ),
                        markers: [
                          Marker(
                            markerId: MarkerId('1'),
                            position: LatLng(
                                giftGiver.position.geopoint.latitude,
                                giftGiver.position.geopoint.longitude),
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

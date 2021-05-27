import 'dart:collection';

import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';

import '../../views/map/geo_locations.dart';
import '../../views/map/geo_map_view.dart';
import '../../views/map/my_map_view.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import '../../views/connection_views/connection_view.dart';

class UserNavbar extends StatelessWidget {
  final height = Get.size.height;
  final width = Get.size.width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.home, color: Colors.white, size: height * 0.05),
        ),
        GestureDetector(
          onTap: () {
            Get.find<AuthController>().authService.value.signOut();
          },
          child: Icon(Icons.ballot, color: Colors.white, size: height * 0.04),
        ),
        GestureDetector(
          onTap: () {
            GiftGiverService().addGift();

            // geoController.bindGeoStream();
            // Get.to(() => GeoLocation());
          },
          child: Icon(Icons.circle, color: Colors.red, size: height * 0.06),
        ),
        GestureDetector(
          onTap: () {
            Get.to(ConnectionView());
          },
          child: Icon(Icons.message, color: Colors.white, size: height * 0.045),
        ),
        GestureDetector(
          onTap: () => Get.toNamed(GeoMapView.route),
          child: Icon(Icons.map, color: Colors.white, size: height * 0.035),
        ),
      ],
    );
  }
}

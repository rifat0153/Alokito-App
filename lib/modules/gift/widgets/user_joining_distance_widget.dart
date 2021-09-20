import 'package:alokito_new/core/location/location_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../models/gift_giver/gift.dart';
import '../../auth/controllers/auth_controller.dart';

class UserRatingAndDistance extends StatelessWidget {
  UserRatingAndDistance({
    Key? key,
    this.horizontalPadding = 16,
    this.verticalPadding = 8,
    required this.giftGiver,
  }) : super(key: key);

  final double horizontalPadding;
  final double verticalPadding;
  final Gift giftGiver;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    final LatLng currentUserPosition = authController.currentUserPosition.value;

    final double distanceBtnGiverAndRequester = LocationHelper.determineDistance(
            currentUserPosition.latitude,
            currentUserPosition.longitude,
            giftGiver.user!.geometry.coordinates.last,
            giftGiver.user!.geometry.coordinates.first)
        .toPrecision(2);

    const double starSize = 12;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: Row(
        children: [
          giftGiver.user!.averageRating >= 1
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.user!.averageRating >= 2
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.user!.averageRating >= 3
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.user!.averageRating >= 4
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.user!.averageRating >= 5
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          const Icon(Icons.arrow_forward_ios),
          Text('$distanceBtnGiverAndRequester km away')
        ],
      ),
    );
  }
}


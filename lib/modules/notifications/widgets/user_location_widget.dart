import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';

class UserLocationWidget extends StatelessWidget {
  UserLocationWidget({
    required this.giftNotification,
    required this.rating,
    required this.lat,
    required this.lng,
  });

  final GiftNotification giftNotification;
  final int rating;
  final double lat, lng;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(rating);

    const double starSize = 12;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          rating >= 1
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          rating >= 2
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          rating >= 3
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          rating >= 4
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          rating >= 5
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          const Icon(Icons.arrow_forward_ios),
          authController.currentUser.value.maybeWhen(
            data: (data) {
              final geo = Geoflutterfire();
              var giftGiverPoint = geo.point(
                  latitude:
                      giftNotification.requesterPosition.geopoint.latitude,
                  longitude:
                      giftNotification.requesterPosition.geopoint.longitude);

              var distance = giftGiverPoint.distance(
                  lat: data.position.geopoint.latitude,
                  lng: data.position.geopoint.longitude);

              return Text('$distance km away');
            },
            orElse: () => const Text('0'),
          ),
        ],
      ),
    );
  }
}

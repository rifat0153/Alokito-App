import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';

class UserRatingAndDistance extends StatelessWidget {
  UserRatingAndDistance({required this.giftGiver});

  final GiftGiver giftGiver;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(giftGiver.userAvgRating);

    const double starSize = 12;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          giftGiver.userAvgRating >= 1
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userAvgRating >= 2
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userAvgRating >= 3
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userAvgRating >= 4
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userAvgRating >= 5
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          const Icon(Icons.arrow_forward_ios),
          authController.currentUser.value.maybeWhen(
            data: (data) {
              final geo = Geoflutterfire();
              var giftGiverPoint = geo.point(
                  latitude: giftGiver.userPosition.geopoint.latitude,
                  longitude: giftGiver.userPosition.geopoint.longitude);

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

class UserDetail extends StatelessWidget {
  UserDetail({required this.giftGiver});

  final GiftGiver giftGiver;

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    var userCreatedAt = DateTime.fromMillisecondsSinceEpoch(
        giftGiver.userCreatedAt.millisecondsSinceEpoch);
    var joined = date.difference(userCreatedAt).inDays ~/ 30;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(giftGiver.userImageUrl),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                giftGiver.userFullName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Joined $joined months ago'),
            ],
          ),
        ],
      ),
    );
  }
}
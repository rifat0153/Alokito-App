import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
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
    print(giftGiver.user!.averageRating);



    var distance = Geoflutterfire()
        .point(latitude: giftGiver.user!.geometry.coordinates.last, longitude: giftGiver.user!.geometry.coordinates.first)
        .distance(
          lat: authController.currentUserInfo.value.maybeWhen(data: (user) => 23, orElse: () => 0),
          lng: authController.currentUserInfo.value.maybeWhen(data: (user) => 90, orElse: () => 0),
        );
    // TODO FIX
    // var distance = Geoflutterfire()
    //     .point(
    //         latitude: giftGiver.userPosition.geopoint.latitude,
    //         longitude: giftGiver.userPosition.geopoint.longitude)
    //     .distance(
    //       lat: authController.currentUserInfo.value
    //           .maybeWhen(data: (user) => user.position.geopoint.latitude, orElse: () => 0),
    //       lng: authController.currentUserInfo.value
    //           .maybeWhen(data: (user) => user.position.geopoint.longitude, orElse: () => 0),
    //     );

    const double starSize = 12;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
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
          Text('$distance km away')
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
    final date = DateTime.now();
    final userCreatedAt = DateTime.fromMicrosecondsSinceEpoch(giftGiver.user!.createdAt.microsecondsSinceEpoch);
    final joined = date.difference(userCreatedAt).inDays ~/ 30;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(giftGiver.user!.imageUrl),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                giftGiver.user!.firstName,
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

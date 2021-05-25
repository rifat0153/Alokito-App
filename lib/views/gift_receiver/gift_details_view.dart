import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/widgets/gift_reciever/gift_detail_map_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftDetailsView extends StatelessWidget {
  GiftDetailsView({required this.giftGiver});

  GiftGiver giftGiver;
  GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    var giftType = giftController.convertGiftType(giftGiver.giftType);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Get.back()),
          title: Text('Gift Offer- $giftType'),
          elevation: 5,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Container(
              height: Get.size.height,
              width: Get.size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/gift_details.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
                top: 10,
                child: Container(
                  height: Get.size.height,
                  width: Get.size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _Image(giftGiver: giftGiver),
                        _PackageName(giftGiver: giftGiver),
                        _GiftDetails(giftGiver: giftGiver),
                        _UserDetail(giftGiver: giftGiver),
                        _UserRatingAndDistance(giftGiver: giftGiver),
                        _Location(giftGiver: giftGiver),
                        GiftDetailMapWidget(giftGiver: giftGiver),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('data'),
                        ),
                        SizedBox(height: 300)
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class _Location extends StatelessWidget {
  _Location({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Location', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('${giftGiver.location}'),
        ],
      ),
    );
  }
}

class _UserRatingAndDistance extends StatelessWidget {
  _UserRatingAndDistance({required this.giftGiver});

  final GiftGiver giftGiver;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(giftGiver.userRating);

    const double starSize = 12;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          giftGiver.userRating >= 1
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userRating >= 2
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userRating >= 3
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userRating >= 4
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          giftGiver.userRating >= 5
              ? const Icon(Icons.star, color: Colors.yellow, size: starSize)
              : const Icon(Icons.star, size: starSize),
          const Icon(Icons.arrow_forward_ios),
          authController.currentUser.value.maybeWhen(
            data: (data) {
              final geo = Geoflutterfire();
              var giftGiverPoint = geo.point(
                  latitude: giftGiver.position.geopoint.latitude,
                  longitude: giftGiver.position.geopoint.longitude);

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

class _UserDetail extends StatelessWidget {
  _UserDetail({required this.giftGiver});

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

class _Image extends StatelessWidget {
  _Image({required this.giftGiver});

  final GiftGiver giftGiver;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 200,
        width: Get.size.width * 0.9,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              giftGiver.imageUrl,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}

class _PackageName extends StatelessWidget {
  _PackageName({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Package For',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 8, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              color: GIFT_ADD_FORM_COLOR,
            ),
            child: Row(
              children: [
                Text(giftController.convertGiftFor(giftGiver)),
                const SizedBox(width: 30),
                Text('${giftGiver.givingGiftInDays} days'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _GiftDetails extends StatelessWidget {
  _GiftDetails({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Gift Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 8, color: Colors.transparent),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  color: GIFT_ADD_FORM_COLOR,
                ),
                child: Text('${giftGiver.giftDetails}'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _GiftGiverInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

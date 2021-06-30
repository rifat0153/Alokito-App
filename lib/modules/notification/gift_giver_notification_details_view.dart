import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GiftGiverNotificationDetailsView extends StatelessWidget {
  GiftGiverNotificationDetailsView({Key? key, required this.giftReceiver}) : super(key: key);

  GiftReceiver? giftReceiver;

  double calculateDistance(MyPosition posotion1, MyPosition posotion2) {
    return Geoflutterfire()
        .point(latitude: posotion1.geopoint.latitude, longitude: posotion1.geopoint.longitude)
        .distance(lat: posotion2.geopoint.latitude, lng: posotion2.geopoint.longitude);
  }

  @override
  Widget build(BuildContext context) {
    var requesterIdCreatedAgo = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(giftReceiver!.createdAt.millisecondsSinceEpoch))
        .inDays;

    var distanceBetweenRequesterAndGiver =
        calculateDistance(giftReceiver!.requester.position, giftReceiver!.giftGiver.userPosition);

    return SkeletonWidget(
      titleWidget: MyText('Notification - Requester Details', fontSize: 15),
      assetPath: 'assets/images/gift_details.png',
      child: Column(
        children: [
          SizedBox(height: context.height * 0.08),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _RequesterDetailWidget(
                      giftReceiver: giftReceiver,
                      requesterIdCreatedAgo: requesterIdCreatedAgo,
                      distanceBetweenRequesterAndGiver: distanceBetweenRequesterAndGiver),
                  _CommentWidget(giftReceiver: giftReceiver),
                  
                  const SizedBox(height: 1000),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: Get.height * 0.08,
          )
        ],
      ),
    );
  }
}

class _CommentWidget extends StatelessWidget {
  const _CommentWidget({
    Key? key,
    required this.giftReceiver,
  }) : super(key: key);

  final GiftReceiver? giftReceiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(giftReceiver!.comment),
        ),
      ),
    );
  }
}

class _RequesterDetailWidget extends StatelessWidget {
  const _RequesterDetailWidget({
    Key? key,
    required this.giftReceiver,
    required this.requesterIdCreatedAgo,
    required this.distanceBetweenRequesterAndGiver,
  }) : super(key: key);

  final GiftReceiver? giftReceiver;
  final int requesterIdCreatedAgo;
  final double distanceBetweenRequesterAndGiver;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width * 0.7,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(giftReceiver!.requester.imageUrl!),
                        radius: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(giftReceiver!.requester.userName, fontWeight: FontWeight.bold),
                      const SizedBox(height: 8),
                      MyText('Joined $requesterIdCreatedAgo months ago'),
                    ],
                  ))
            ],
          ),
        ),
        Container(
          width: Get.width * 0.7,
          child: Row(
            children: [
              for (var i = 0; i < 5; i++)
                giftReceiver!.requester.averageRating.toInt() > i
                    ? const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.orange,
                      )
                    : const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.black,
                      ),
              const SizedBox(width: 16),
              const Icon(MdiIcons.mapMarker),
              MyText('$distanceBetweenRequesterAndGiver km away'),
            ],
          ),
        )
      ],
    );
  }
}

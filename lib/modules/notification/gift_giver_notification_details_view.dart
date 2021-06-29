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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: context.height * 0.08),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: Get.width * 0.7,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            Spacer(),
                            const Icon(MdiIcons.mapMarker),
                            MyText('$distanceBetweenRequesterAndGiver km away'),
                            Spacer(),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 1000),
                  Text(
                    "Don't worry...",
                    style: boldFontStyle.copyWith(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: Get.height * 0.08,
          )
        ],
      ),
    );
  }
}

import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/notification/gift_ask/widgets/gift_ask_feedback_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/covid_guidelines_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/gift_ask_notification_controller.dart';

class GiftAskNotificationDetailsView extends StatelessWidget {
  GiftAskNotificationDetailsView({Key? key, required this.giftAskGiver}) : super(key: key);
  final GiftAskGiver giftAskGiver;

  final GiftAskNotificationController controller = Get.put(GiftAskNotificationController());

  double calculateDistance(
    double lat1,
    double lng1,
    double lat2,
    double lng2,
  ) {
    return LocationHelper.determineDistance(lat1, lng1, lat2, lng2);
  }

  @override
  Widget build(BuildContext context) {
    final requesterIdCreatedAgo = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(123)).inDays;

    final LatLng requesterLatLng =
        LatLng(giftAskGiver.requester.geometry.coordinates[1], giftAskGiver.requester.geometry.coordinates[0]);
    final markers = [Marker(markerId: MarkerId(giftAskGiver.id.toString()), position: requesterLatLng)];

    final giverCoordinates = giftAskGiver.requester.geometry.coordinates;
    final requesterCoordinates = giftAskGiver.giver.geometry.coordinates;

    final distanceBetweenRequesterAndGiver = calculateDistance(
      giverCoordinates[1],
      giverCoordinates[0],
      requesterCoordinates[1],
      requesterCoordinates[0],
    );

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
                      giftAskGiver: giftAskGiver,
                      requesterIdCreatedAgo: requesterIdCreatedAgo,
                      distanceBetweenRequesterAndGiver: distanceBetweenRequesterAndGiver),
                  _CommentWidget(giftAskGiver: giftAskGiver),
                  _RequesterLocationAndGiftDetailsWidget(giftAskGiver: giftAskGiver),
                  _DecisionWidget(controller: controller, giftAskGiver: giftAskGiver),
                  _MapWidget(giftAskGiver: giftAskGiver, markers: markers),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: CovidGuideLines(),
          ),
        ],
      ),
    );
  }
}

class _DecisionWidget extends StatelessWidget {
  const _DecisionWidget({
    Key? key,
    required this.controller,
    required this.giftAskGiver,
  }) : super(key: key);

  final GiftAskNotificationController controller;
  final GiftAskGiver giftAskGiver;

  @override
  Widget build(BuildContext context) {
    //*********************       If its requester notification          ********************
    if (giftAskGiver.requester.id == Get.find<AuthController>().currentUser.value.id) {
      if (giftAskGiver.messageForGiverrSent == true && giftAskGiver.giftAskStatus == GiftAskStatus.requestDelivered) {
        return Column(
          children: [
            MyText('r Delivered', fontSize: 20, color: Colors.blueAccent),
          ],
        );
      }
      if (giftAskGiver.messageForGiverrSent == false && giftAskGiver.giftAskStatus == GiftAskStatus.requestDelivered) {
        return Column(
          children: [
            MyText('r Delivered', fontSize: 20, color: Colors.blueAccent),
            MaterialButton(
              onPressed: () {
                showDialog(
                    context: context, builder: (_) => GiftAskFeedbackWidget(giftAskGiver: giftAskGiver, isRequester: true));
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: giftAskColor,
              child: MyText('r Done', color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        );
      }
      // Gift Canceled By Giver
      if (giftAskGiver.giftAskStatus == GiftAskStatus.requestCanceledByGiver) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText('r Request canceled by', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            MyText(
              giftAskGiver.giver.userName,
              textAlign: TextAlign.center,
              fontSize: 25,
            ),
          ],
        );
      }
      // Gift confirmed by giver
      if (giftAskGiver.giftAskStatus == GiftAskStatus.requestConfirmed) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText('r Request confirmed by', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            MyText(
              giftAskGiver.giver.userName,
              textAlign: TextAlign.center,
              fontSize: 25,
            ),
            MaterialButton(
              onPressed: () {
                controller.aceeptGiftRequestByRequester(giftAskGiver);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: giftAskColor,
              child: MyText('r Accept Gift', color: Colors.white),
            ),
          ],
        );
      }
      //* Gift Delivered BY Giver
      if (giftAskGiver.giftAskStatus == GiftAskStatus.requestDelivered) {
        return MyText('g Delivered', fontSize: 20, color: Colors.blueAccent);
      }
      //* Gift ACCEPTED BY REQUESTER
      if (giftAskGiver.giftAskStatus == GiftAskStatus.requestAccepted) {
        return MyText('r Gift Accepted by You',
            textAlign: TextAlign.center, color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold);
      }
      //* GIFT CANCELED BY REQUESTER
      if (giftAskGiver.giftAskStatus == GiftAskStatus.requestCanceledByRequester) {
        return MyText('r Request Canceled by You',
            textAlign: TextAlign.center, color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold);
      }

      //* Gift ACCEPTEd by GIVER
      if (giftAskGiver.giftAskStatus == GiftAskStatus.requestAccepted) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                // controller.aceeptGiftRequestByRequester(giftAskGiver);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: giftAskColor,
              child: MyText('r Accept Gift', color: Colors.white),
            ),
            const SizedBox(width: 30),
            MaterialButton(
              onPressed: () {
                controller.cancelGiftRequestByRequester(giftAskGiver);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              color: giftAskColor,
              child: MyText('r Cancel', color: Colors.white),
            )
          ],
        );
      }

      return MaterialButton(
        onPressed: () {
          controller.cancelGiftRequestByRequester(giftAskGiver);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        height: 0,
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
        color: giftAskColor,
        child: MyText('r Cancel Request', color: Colors.white),
      );
    }

    // *** ****************    If its giver notification            **************
    // Gift Delivered BY Giver
    if (giftAskGiver.messageForRequesterSent == true) {
      return Column(
        children: [
          MyText('Delivered', fontSize: 20, color: Colors.blueAccent),
        ],
      );
    }
    // Gift Delivered BY Giver But not message sent for Requester
    if (giftAskGiver.giftAskStatus == GiftAskStatus.requestDelivered) {
      return Column(
        children: [
          MyText('Delivered', fontSize: 20, color: Colors.blueAccent),
          MaterialButton(
            onPressed: () {
              showDialog(
                  context: context, builder: (_) => GiftAskFeedbackWidget(giftAskGiver: giftAskGiver, isRequester: false));
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            height: 0,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: giftAskColor,
            child: MyText('Done', color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      );
    }
    // Gift ACCEPTED BY REQUESTER
    if (giftAskGiver.giftAskStatus == GiftAskStatus.requestAccepted) {
      return Column(
        children: [
          MyText('Gift Accepted by ${giftAskGiver.requester.userName}',
              textAlign: TextAlign.center, color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          MaterialButton(
            onPressed: () {
              showDialog(
                  context: context, builder: (_) => GiftAskFeedbackWidget(giftAskGiver: giftAskGiver, isRequester: false));
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            height: 0,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: giftAskColor,
            child: MyText('Done', color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      );
    }
    // GIFT CANCELED BY REQUESTER
    if (giftAskGiver.giftAskStatus == GiftAskStatus.requestCanceledByRequester) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText('Request Canceled by', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          MyText(
            giftAskGiver.requester.userName,
            textAlign: TextAlign.center,
            fontSize: 25,
          ),
        ],
      );
    }
    if (giftAskGiver.giftAskStatus == GiftAskStatus.requestCanceledByGiver) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText(
            'You',
            textAlign: TextAlign.center,
            fontSize: 25,
          ),
          MyText('Canceled the Request', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ],
      );
    }

    // GIFT CONFIRMED BY GIVER/ WAITING FOR ACCEPTCNCE FROM REQUESTER
    return giftAskGiver.giftAskStatus == GiftAskStatus.requestConfirmed
        ? MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            height: 0,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: giftAskColor,
            child: MyText('Gift Accepted', color: Colors.white),
          )
        : MaterialButton(
            onPressed: () {
              controller.confirmGift(giftAskGiver);
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            height: 0,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: giftAskColor,
            child: MyText('Accept for confirmation', color: Colors.white),
          );
  }
}

class _MapWidget extends StatelessWidget {
  const _MapWidget({
    Key? key,
    required this.giftAskGiver,
    required this.markers,
  }) : super(key: key);

  final GiftAskGiver? giftAskGiver;
  final List<Marker> markers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 200,
        width: double.infinity,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(target: markers[0].position, zoom: 13),
          zoomControlsEnabled: false,
          zoomGesturesEnabled: false,
          markers: Set.of(markers),
        ),
      ),
    );
  }
}

class _RequesterLocationAndGiftDetailsWidget extends StatelessWidget {
  const _RequesterLocationAndGiftDetailsWidget({
    Key? key,
    required this.giftAskGiver,
  }) : super(key: key);

  final GiftAskGiver giftAskGiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff707070).withOpacity(0.1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text('Location', style: boldFontStyle),
                const SizedBox(height: 4),
                Text('asd'),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gift offered', style: boldFontStyle),
                    const SizedBox(width: 100),
                    Text('Gift received', style: boldFontStyle),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyText(giftAskGiver.requester.giftGiven.toString()),
                    MyText('All time', fontSize: 14),
                    MyText(giftAskGiver.requester.giftReceived.toString()),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 66,
                      decoration: BoxDecoration(
                        color: giftAskColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(FontAwesomeIcons.phone, color: Colors.white),
                            MyText('Voice Call', fontSize: 9, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 66,
                      decoration: BoxDecoration(
                        color: giftAskColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(FontAwesomeIcons.commentAlt, color: Colors.white),
                            MyText('Conversation', fontSize: 9, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class _CommentWidget extends StatelessWidget {
  const _CommentWidget({
    Key? key,
    required this.giftAskGiver,
  }) : super(key: key);

  final GiftAskGiver giftAskGiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('asdasd'),
        ),
      ),
    );
  }
}

class _RequesterDetailWidget extends StatelessWidget {
  const _RequesterDetailWidget({
    Key? key,
    required this.giftAskGiver,
    required this.requesterIdCreatedAgo,
    required this.distanceBetweenRequesterAndGiver,
  }) : super(key: key);

  final GiftAskGiver giftAskGiver;
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
                        backgroundImage: NetworkImage(giftAskGiver.requester.imageUrl),
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
                      MyText(giftAskGiver.requester.userName, fontWeight: FontWeight.bold),
                      const SizedBox(height: 8),
                      MyText('Joined $requesterIdCreatedAgo months ago'),
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(
          width: Get.width * 0.7,
          child: Row(
            children: [
              for (var i = 0; i < 5; i++)
                giftAskGiver.requester.averageRating.toInt() > i
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
              const Icon(FontAwesomeIcons.mapMarker),
              MyText('$distanceBetweenRequesterAndGiver km away'),
            ],
          ),
        )
      ],
    );
  }
}

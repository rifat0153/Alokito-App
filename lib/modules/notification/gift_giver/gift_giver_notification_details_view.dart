import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/modules/gift_receiver/widgets/message_popup_widget.dart';
import 'package:alokito_new/modules/notification/gift_giver/gift_giver_notification_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver/widgets/feedback_widget.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/covid_guidelines_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GiftGiverNotificationDetailsView extends StatelessWidget {
  GiftGiverNotificationDetailsView({Key? key, required this.giftReceiver}) : super(key: key);
  GiftReceiver? giftReceiver;

  final GiftGiverNotificationController controller = Get.put(GiftGiverNotificationController());

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

    LatLng requesterLatLng = LatLng(giftReceiver!.requester.position.geopoint.latitude,
        giftReceiver!.requester.position.geopoint.longitude);
    var markers = [Marker(markerId: MarkerId(giftReceiver!.id.toString()), position: requesterLatLng)];

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
                  _RequesterLocationAndGiftDetailsWidget(giftReceiver: giftReceiver!),
                  _DecisionWidget(controller: controller, giftReceiver: giftReceiver),
                  _MapWidget(giftReceiver: giftReceiver, markers: markers),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8.0), child: CovidGuideLines()),
        ],
      ),
    );
  }
}

class _DecisionWidget extends StatelessWidget {
  const _DecisionWidget({
    Key? key,
    required this.controller,
    required this.giftReceiver,
  }) : super(key: key);

  final GiftGiverNotificationController controller;
  final GiftReceiver? giftReceiver;

  @override
  Widget build(BuildContext context) {
    //***             If its requester notification              ***
    if (giftReceiver!.requester.id == Get.find<AuthController>().currentUser.value.id) {
      if (giftReceiver!.messageForGiverrSent == true &&
          giftReceiver!.giftRequestStatus == GiftRequestStatus.requestDelivered) {
        return Column(
          children: [
            MyText('r Delivered', fontSize: 20, color: Colors.blueAccent),
          ],
        );
      }
      if (giftReceiver!.messageForGiverrSent == false &&
          giftReceiver!.giftRequestStatus == GiftRequestStatus.requestDelivered) {
        return Column(
          children: [
            MyText('r Delivered', fontSize: 20, color: Colors.blueAccent),
            MaterialButton(
              onPressed: () {
                Get.dialog(FeedbackWidget(giftReceiver: giftReceiver, isRequester: true));
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
      // Gift Delivered BY Giver
      if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestDelivered) {
        return MyText('r Delivered', fontSize: 20, color: Colors.blueAccent);
      }
      // Gift ACCEPTED BY REQUESTER
      if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestAccepted) {
        return MyText('r Gift Accepted by You',
            textAlign: TextAlign.center, color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold);
      }
      // GIFT CANCELED BY REQUESTER
      if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestCanceledByRequester) {
        return MyText('r Request Canceled by You',
            textAlign: TextAlign.center, color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold);
      }

      //Gift ACCEPTEd by GIVER
      if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestAccepted) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                controller.aceeptGiftRequestByRequester(giftReceiver!);
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
                controller.cancelGiftRequestByRequester(giftReceiver!);
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
          controller.cancelGiftRequestByRequester(giftReceiver!);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        height: 0,
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
        color: giftAskColor,
        child: MyText('r Cancel', color: Colors.white),
      );
    }

    // ***                    If its giver notification                  ***
    // Gift Delivered BY Giver
    if (giftReceiver!.messageForRequesterSent == true) {
      return Column(
        children: [
          MyText('Delivered', fontSize: 20, color: Colors.blueAccent),
        ],
      );
    }
    // Gift Delivered BY Giver But not message sent for Requester
    if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestDelivered) {
      return Column(
        children: [
          MyText('Delivered', fontSize: 20, color: Colors.blueAccent),
          MaterialButton(
            onPressed: () {
              Get.dialog(FeedbackWidget(giftReceiver: giftReceiver, isRequester: false));
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
    if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestAccepted) {
      return Column(
        children: [
          MyText('Gift Accepted by ${giftReceiver!.requester.userName}',
              textAlign: TextAlign.center, color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          MaterialButton(
            onPressed: () {
              controller.doneGiftRequestByGiver(giftReceiver!);
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
    if (giftReceiver!.giftRequestStatus == GiftRequestStatus.requestCanceledByRequester) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText('Request Canceled by', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          MyText(
            giftReceiver!.requester.userName,
            textAlign: TextAlign.center,
            fontSize: 25,
          ),
        ],
      );
    }

    // GIFT CONFIRMED BY GIVER/ WAITING FOR ACCEPTCNCE FROM REQUESTER
    return giftReceiver!.giftRequestStatus == GiftRequestStatus.requestConfirmed
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
              controller.confirmGift(giftReceiver!);
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
    required this.giftReceiver,
    required this.markers,
  }) : super(key: key);

  final GiftReceiver? giftReceiver;
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
    required this.giftReceiver,
  }) : super(key: key);

  final GiftReceiver giftReceiver;

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
                Text(giftReceiver.giftGiver.location.isEmpty ? 'N/A' : giftReceiver.giftGiver.location),
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
                    MyText(giftReceiver.requester.giftOffered.toString()),
                    MyText('All time', fontSize: 14),
                    MyText(giftReceiver.requester.giftReceived.toString()),
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
                            const Icon(MdiIcons.phone, color: Colors.white),
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
                            const Icon(MdiIcons.chat, color: Colors.white),
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
    required this.giftReceiver,
  }) : super(key: key);

  final GiftReceiver? giftReceiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        width: double.infinity,
        decoration:
            BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(5)),
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

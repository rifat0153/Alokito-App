import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver/gift_giver_notification_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver/widgets/feedback_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/covid_guidelines_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftGiverNotificationDetailsView extends StatelessWidget {
  GiftGiverNotificationDetailsView({Key? key, required this.giftReceiver}) : super(key: key);
  GiftRequest? giftReceiver;

  final GiftGiverNotificationController controller = Get.put(GiftGiverNotificationController());

  double calculateDistance(
    double lat1,
    double lng1,
    double lat2,
    double lng2,
  ) {
    return Geoflutterfire().point(latitude: lat1, longitude: lng1).distance(lat: lat2, lng: lng2);
  }

  @override
  Widget build(BuildContext context) {
    var requesterIdCreatedAgo = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(giftReceiver!.createdAt.millisecondsSinceEpoch))
        .inDays;

    final LatLng requesterLatLng =
        LatLng(giftReceiver!.requester.geometry.coordinates[1], giftReceiver!.requester.geometry.coordinates[0]);
    var markers = [Marker(markerId: MarkerId(giftReceiver!.id.toString()), position: requesterLatLng)];
    final giverCoordinates = giftReceiver!.requester.geometry.coordinates;
    final requesterCoordinates = giftReceiver!.requester.geometry.coordinates;
 
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
                      distanceBetweenRequesterAndGiver: 0),
                  _CommentWidget(giftReceiver: giftReceiver),
                  _RequesterLocationAndGiftDetailsWidget(giftReceiver: giftReceiver!),
                  _DecisionWidget(controller: controller, giftReceiver: giftReceiver!),
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
  final GiftRequest giftReceiver;

  @override
  Widget build(BuildContext context) {
    //*************************** If its requester notification   ********************************
    if (giftReceiver.requester.id == Get.find<AuthController>().currentUser.value.id) {
      return giftReceiver.giftRequestStatus.when(
        pending: () => MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          height: 0,
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
          color: giftAskColor,
          child: MyText('r Cancel', color: Colors.white),
        ),
        confirmed: () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: giftAskColor,
              child: MyText('r Accept Gift', color: Colors.white),
            ),
            const SizedBox(width: 30),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              color: giftAskColor,
              child: MyText('r Cancel', color: Colors.white),
            )
          ],
        ),
        canceledByGiver: () => MyText('r Request Canceled by ${giftReceiver.gift.user!.userName}',
            textAlign: TextAlign.center, color: Colors.red,  fontWeight: FontWeight.bold),
        canceledByRequester: () => MyText('r Request Canceled by You',
            textAlign: TextAlign.center, color: Colors.red, fontWeight: FontWeight.bold),
        accepted: () => MyText('r Gift Accepted by You',
            textAlign: TextAlign.center, color: Colors.green, fontWeight: FontWeight.bold),
        delivered: () => giftReceiver.messageForGiverrSent == true
            ? Column(
                children: [
                  MyText('r Gift Received', color: Colors.blueAccent),
                ],
              )
            : Column(
                children: [
                  MyText('r Gift Received', color: Colors.blueAccent),
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
              ),
      );
    }

    // ************************* If its giver notification ************************

    return giftReceiver.giftRequestStatus.when(
        pending: () => MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: giftAskColor,
              child: MyText('Accept for confirmation', color: Colors.white),
            ),
        confirmed: () => MyText(
              'Gift Accepted by You\n Waiting for confirmation',
              color: Colors.black,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
        canceledByGiver: () =>
            MyText('Request Canceled by', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        canceledByRequester: () => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText('Request Canceled by', color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
                MyText(
                  giftReceiver.requester.userName,
                  textAlign: TextAlign.center,
                  fontSize: 25,
                ),
              ],
            ),
        accepted: () => Column(
              children: [
                MyText('Gift Accepted by ${giftReceiver.requester.userName}',
                    textAlign: TextAlign.center, color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  height: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: giftAskColor,
                  child: MyText('Done', color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
        delivered: () => giftReceiver.messageForRequesterSent
            ? MyText('Delivered', fontSize: 20, color: Colors.blueAccent)
            : Column(
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
              ));
  }
}

class _MapWidget extends StatelessWidget {
  const _MapWidget({
    Key? key,
    required this.giftReceiver,
    required this.markers,
  }) : super(key: key);

  final GiftRequest? giftReceiver;
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

  final GiftRequest giftReceiver;

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
                Text(giftReceiver.gift.location.isEmpty ? 'N/A' : giftReceiver.gift.location),
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
                    // TODO FIX
                    MyText('1'),
                    // MyText(giftReceiver.requester.giftOffered.toString()),
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
    required this.giftReceiver,
  }) : super(key: key);

  final GiftRequest? giftReceiver;

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

  final GiftRequest? giftReceiver;
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
                        backgroundImage: NetworkImage(giftReceiver!.requester.imageUrl),
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
              const Icon(FontAwesomeIcons.mapMarker),
              MyText('$distanceBetweenRequesterAndGiver km away'),
            ],
          ),
        )
      ],
    );
  }
}

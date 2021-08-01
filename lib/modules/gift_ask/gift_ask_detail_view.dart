import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask_giver/gift_ask_giver_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftAskDetailView extends StatelessWidget {
  const GiftAskDetailView({Key? key, required this.giftAsk}) : super(key: key);

  final GiftAsk giftAsk;

  double calculateDistance(MyPosition posotion1, MyPosition posotion2) {
    return Geoflutterfire()
        .point(latitude: posotion1.geopoint.latitude, longitude: posotion1.geopoint.longitude)
        .distance(lat: posotion2.geopoint.latitude, lng: posotion2.geopoint.longitude);
  }

  @override
  Widget build(BuildContext context) {
    var date = DateFormat.yMd()
        .format(DateTime.fromMicrosecondsSinceEpoch(giftAsk.createdAt.microsecondsSinceEpoch));
    var distance = calculateDistance(
      giftAsk.requester.position,
      Get.find<AuthController>().currentUser.value.position,
    );
    var userJoinedAt = DateTime.now()
            .difference(
              DateTime.fromMillisecondsSinceEpoch(giftAsk.requester.createdAt.millisecondsSinceEpoch),
            )
            .inDays ~/
        30;

    var markers = [
      Marker(
          markerId: const MarkerId('1'),
          position: LatLng(giftAsk.position.geopoint.latitude, giftAsk.position.geopoint.longitude))
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          backgroundColor: APP_BAR_COLOR,
          foregroundColor: APP_BAR_COLOR,
          elevation: 5,
          title: Text(
            'Gift Request - ${convertGiftAskType(giftAskType: giftAsk.giftAskType)} ',
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
              ),
            ),
            _buildBody(date, distance, userJoinedAt, markers),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _buildBody(
    String date,
    double distance,
    int userJoinedAt,
    List<Marker> markers,
  ) {
    return SingleChildScrollView(
      // physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(8.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(giftAsk.giftTitle, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
                ],
              )),
          _RequestForAndDateWidget(giftAsk: giftAsk, date: date),
          _NoteWidget(giftAsk: giftAsk),
          _UserNameAndLocationWidget(giftAsk: giftAsk, distance: distance),
          _RequesterLocationAndGiftDetailsWidget(userJoinedAt: userJoinedAt, giftAsk: giftAsk),
          AcceptAndDenyWidget(giftAsk: giftAsk),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
                child: MyText('Pickup Location', fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 200.h,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      giftAsk.position.geopoint.latitude,
                      giftAsk.position.geopoint.longitude,
                    ),
                    zoom: 13,
                  ),
                  markers: Set.of(markers),
                  zoomControlsEnabled: false,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class AcceptAndDenyWidget extends StatelessWidget {
  AcceptAndDenyWidget({
    required this.giftAsk,
    Key? key,
  }) : super(key: key);

  final GiftAsk giftAsk;

  final GiftAskGiverController giftAskGiverController = Get.find<GiftAskGiverController>();
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // final user = authController.currentUserInfo.value.maybeWhen(orElse: () )

    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (authController.currentUser.value.acceptedGiftId != giftAsk.id &&
              authController.currentUser.value.acceptedGiftId.isEmpty)
            MaterialButton(
              onPressed: () async {
                await giftAskGiverController.acceptGiftAskRequest(giftAsk);
              },
              color: GIFT_ASK_COLOR,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              height: 0,
              child: MyText(
                'Accept for confirmation',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
          if (authController.currentUser.value.acceptedGiftId != giftAsk.id &&
              authController.currentUser.value.acceptedGiftId.isNotEmpty)
            MyText(
              'Another Request Ongoing',
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          if (authController.currentUser.value.acceptedGiftId == giftAsk.id &&
              authController.currentUser.value.acceptedGiftId.isNotEmpty)
            MyText(
              'Rquest Accepted',
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
        ],
      ),
    );
  }
}

class _RequesterLocationAndGiftDetailsWidget extends StatelessWidget {
  const _RequesterLocationAndGiftDetailsWidget({
    Key? key,
    required this.userJoinedAt,
    required this.giftAsk,
  }) : super(key: key);

  final int userJoinedAt;
  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff707070).withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText('Joined $userJoinedAt months ago', fontSize: 18),
                const SizedBox(height: 8),
                Text('Location', style: boldFontStyle),
                const SizedBox(height: 4),
                Text(giftAsk.address.isEmpty ? 'N/A' : giftAsk.address),
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
                    MyText(giftAsk.requester.giftOffered.toString()),
                    MyText('All time', fontSize: 14),
                    MyText(giftAsk.requester.giftReceived.toString()),
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
                        color: GIFT_ASK_COLOR,
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
                        color: GIFT_ASK_COLOR,
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

class _UserNameAndLocationWidget extends StatelessWidget {
  const _UserNameAndLocationWidget({
    Key? key,
    required this.giftAsk,
    required this.distance,
  }) : super(key: key);

  final GiftAsk giftAsk;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                minRadius: 30,
                backgroundImage: NetworkImage(
                  giftAsk.requester.imageUrl ?? PLACEHOLDER_IMAGE_URL,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(giftAsk.requester.userName, style: boldFontStyle.copyWith(fontSize: 18)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      SizedBox(
                          width: 120,
                          child: Text(giftAsk.area, overflow: TextOverflow.ellipsis, style: boldFontStyle)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 30),
                          const Icon(MdiIcons.mapMarker),
                          Text('$distance km away'),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              for (var i = 0; i < 5; i++)
                giftAsk.requester.averageRating.toInt() > i
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
            ],
          )
        ],
      ),
    );
  }
}

class _NoteWidget extends StatelessWidget {
  const _NoteWidget({
    Key? key,
    required this.giftAsk,
  }) : super(key: key);

  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Note', style: boldFontStyle)],
          ),
          const SizedBox(height: 4),
          Text(giftAsk.note)
        ],
      ),
    );
  }
}

class _RequestForAndDateWidget extends StatelessWidget {
  const _RequestForAndDateWidget({
    Key? key,
    required this.giftAsk,
    required this.date,
  }) : super(key: key);

  final GiftAsk giftAsk;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Request For', style: boldFontStyle),
              Text('${giftAsk.requestForNoOfPeople} people'),
              MaterialButton(
                color: Colors.transparent,
                disabledColor: Colors.transparent,
                height: 0,
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                onPressed: null,
                child: Text('', style: whiteFontStyle.copyWith(fontSize: 12)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Request Date', style: boldFontStyle),
              Text(date),
              MaterialButton(
                color: GIFT_ASK_COLOR,
                height: 0,
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                onPressed: () {},
                child: Text('View Prescription', style: whiteFontStyle.copyWith(fontSize: 12)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

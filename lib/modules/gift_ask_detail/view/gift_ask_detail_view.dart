import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/my_enums.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../../shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftAskDetailView extends StatelessWidget {
  const GiftAskDetailView({Key? key, required this.giftAsk}) : super(key: key);

  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
    var date = '';
    // TODO FIX
    // var distance = calculateDistance(
    //   giftAsk.user.position,
    //   Get.find<AuthController>().currentUser.value.geometry,
    // );
    var userJoinedAt = DateTime.now()
            .difference(
              DateTime.fromMillisecondsSinceEpoch(giftAsk.user.createdAt.millisecondsSinceEpoch),
            )
            .inDays ~/
        30;

    var markers = [Marker(markerId: const MarkerId('1'), position: LatLng(0, 9))];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          backgroundColor: appBarColor,
          foregroundColor: appBarColor,
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
                image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
              ),
            ),
            // _buildBody(date, distance, userJoinedAt, markers),
            // TODO FIX
            _buildBody(date, 1, userJoinedAt, markers),
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
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(
                      0,
                      0,
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

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // final user = authController.currentUserInfo.value.maybeWhen(orElse: () )

    return Obx(
      () => authController.currentUserInfo.value.when(
        data: (user) => SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (user.acceptedGiftId != giftAsk.id && user.acceptedGiftId.isEmpty)
                MaterialButton(
                  onPressed: () async {},
                  color: giftAskColor,
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
              if (user.acceptedGiftId != giftAsk.id && user.acceptedGiftId.isNotEmpty)
                MyText(
                  'Another Request Ongoing',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              if (user.acceptedGiftId == giftAsk.id && user.acceptedGiftId.isNotEmpty)
                MyText(
                  'Rquest Accepted',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator.adaptive()),
        error: (error) => Text(error.toString()),
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
                Text(giftAsk.location.isEmpty ? 'N/A' : giftAsk.location),
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
                    // MyText(giftAsk.requester.giftOffered.toString()),
                    MyText('1'),
                    MyText('All time', fontSize: 14),
                    MyText(giftAsk.user.giftReceived.toString()),
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
                        padding: const EdgeInsets.all(0),
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
                  giftAsk.user.imageUrl,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(giftAsk.user.userName, style: boldFontStyle.copyWith(fontSize: 18)),
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
                          const Icon(FontAwesomeIcons.mapMarker),
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
                giftAsk.user.averageRating.toInt() > i
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
                color: giftAskColor,
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
import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GiftAskDetailView extends StatelessWidget {
  GiftAskDetailView({Key? key, required this.giftAsk}) : super(key: key);

  final GiftAsk giftAsk;

  double calculateDistance(MyPosition posotion1, MyPosition posotion2) {
    return Geoflutterfire()
        .point(latitude: posotion1.geopoint.latitude, longitude: posotion1.geopoint.longitude)
        .distance(lat: posotion2.geopoint.latitude, lng: posotion2.geopoint.longitude);
  }

  @override
  Widget build(BuildContext context) {
    var date = DateFormat.yMd().format(DateTime.fromMicrosecondsSinceEpoch(giftAsk.createdAt.microsecondsSinceEpoch));
    var distance = calculateDistance(giftAsk.requester.position, Get.find<AuthController>().currentUser.value.position);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
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
                image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
              ),
            ),
            Container(
              width: Get.width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Text(giftAsk.giftTitle, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                    _RequestForAndDateWidget(giftAsk: giftAsk, date: date),
                    _NoteWidget(giftAsk: giftAsk),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
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
                                  Container(
                                      width: 120,
                                      child: Text(giftAsk.area, overflow: TextOverflow.ellipsis, style: boldFontStyle)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 30),
                                      Icon(Icons.location_city),
                                      Text('$distance km away'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 800)
                  ],
                ),
              ),
            ),
          ],
        ),
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
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
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
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
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

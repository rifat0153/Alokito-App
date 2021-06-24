import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GiftAskDetailView extends StatelessWidget {
  GiftAskDetailView({Key? key, required this.giftAsk}) : super(key: key);

  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
    var date = DateFormat.yMd().format(DateTime.fromMicrosecondsSinceEpoch(giftAsk.createdAt.microsecondsSinceEpoch));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
          backgroundColor: APP_BAR_COLOR,
          foregroundColor: APP_BAR_COLOR,
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
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text(giftAsk.giftTitle, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                  _RequestForAndDateWidget(giftAsk: giftAsk, date: date),
                ],
              ),
            ),
          ],
        ),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Request For', style: boldFontStyle),
            Text('${giftAsk.requestForNoOfPeople} people'),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Request Date', style: boldFontStyle),
            Text(date),
          ],
        ),
      ],
    );
  }
}

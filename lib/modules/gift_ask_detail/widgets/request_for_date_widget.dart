import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';

import '../../../models/gift_ask/gift_ask.dart';

class GiftAskDetailRequestForAndDateWidget extends StatelessWidget {
  const GiftAskDetailRequestForAndDateWidget({
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

import 'package:flutter/material.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../shared/styles.dart';

class GiftAskDetailNoteWidget extends StatelessWidget {
  const GiftAskDetailNoteWidget({
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
            children: [
              Text('Note', style: boldFontStyle),
            ],
          ),
          const SizedBox(height: 4),
          Text(giftAsk.note)
        ],
      ),
    );
  }
}

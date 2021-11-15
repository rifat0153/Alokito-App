import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../../shared/widget/my_text.dart';

class GiftAskDetailRequesterLocationAndGiftDetailsWidget extends StatelessWidget {
  const GiftAskDetailRequesterLocationAndGiftDetailsWidget({
    Key? key,
    required this.userJoinedAt,
    required this.giftAsk,
  }) : super(key: key);

  final String userJoinedAt;
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
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText('Joined $userJoinedAt ago', fontSize: 18),
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
                    MyText(giftAsk.user.giftGiven.toString()),
                    const MyText('All time', fontSize: 14),
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
                        padding: EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(FontAwesomeIcons.phone, color: Colors.white),
                            const MyText('Voice Call', fontSize: 9, color: Colors.white),
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
                        padding: EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(FontAwesomeIcons.commentAlt, color: Colors.white),
                            const MyText('Conversation', fontSize: 9, color: Colors.white),
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

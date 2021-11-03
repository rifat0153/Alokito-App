import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../../shared/widget/my_text.dart';

class GiftAskRequestDetailLocationAndGiftDetailsWidget extends StatelessWidget {
  const GiftAskRequestDetailLocationAndGiftDetailsWidget({
    Key? key,
    required this.giftAskRequest,
  }) : super(key: key);

  final GiftAskRequest giftAskRequest;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff707070).withOpacity(0.1),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Location', style: boldFontStyle),
              SizedBox(height: 4.h),
              MyText(
                giftAskRequest.giftAsk.location.isEmpty ? 'N/A' : giftAskRequest.giftAsk.location,
                fontSize: 16.sp,
              ),
              SizedBox(height: 8.h),
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
                  const SizedBox(),
                  MyText(giftAskRequest.giftAsk.user.giftGiven.toInt().toString(), color: Colors.red),
                  const MyText('All time', fontSize: 14),
                  MyText(giftAskRequest.giver.giftReceived.toInt().toString(), color: Colors.red),
                  const SizedBox(),
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
        ));
  }
}

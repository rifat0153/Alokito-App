import 'package:alokito_new/modules/chat_room/controllers/chat_room_controller.dart';
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
    required this.chatRoomController,
  }) : super(key: key);

  final GiftAskRequest giftAskRequest;
  final ChatRoomController chatRoomController;

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
                giftAskRequest.giftAsk.location.isEmpty
                    ? 'N/A'
                    : giftAskRequest.giftAsk.location,
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
                  MyText(
                      giftAskRequest.giftAsk.user.giftGiven.toInt().toString(),
                      color: Colors.red),
                  const MyText('All time', fontSize: 14),
                  MyText(giftAskRequest.giver.giftReceived.toInt().toString(),
                      color: Colors.red),
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
                          const Icon(FontAwesomeIcons.phone,
                              color: Colors.white),
                          const MyText('Voice Call',
                              fontSize: 9, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      // create chat_room for GIftAskRequest and Navigate to chat_room_view
                      await chatRoomController.createChatRoom(
                          relatedDocId: giftAskRequest.id!,
                          user1: giftAskRequest.giver.id!,
                          user1Image: giftAskRequest.giver.imageUrl,
                          user1Name: giftAskRequest.giver.userName,
                          user2: giftAskRequest.giftAsk.user.id!,
                          user2Image: giftAskRequest.giftAsk.user.imageUrl,
                          user2Name: giftAskRequest.giftAsk.user.userName,
                          roomType: 'giftAskRequest');
                    },
                    child: Container(
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
                          children: const [
                            Icon(FontAwesomeIcons.commentAlt,
                                color: Colors.white),
                            MyText('Conversation',
                                fontSize: 9, color: Colors.white),
                          ],
                        ),
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

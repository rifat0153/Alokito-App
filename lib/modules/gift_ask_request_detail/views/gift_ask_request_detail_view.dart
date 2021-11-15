import 'package:alokito_new/modules/chat_room/controllers/chat_room_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';
import '../../../shared/skeleton_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../widgets/gift_ask_request_detail_decision_widget.dart';
import '../widgets/gift_ask_request_detail_comment_widget.dart';
import '../widgets/gift_ask_request_detail_giver_widget.dart';
import '../widgets/gift_ask_request_detail_location_gift_details_widget.dart';
import '../widgets/gift_ask_request_detail_map_widget.dart';

class GiftAskRequestDetailView extends StatelessWidget {
  GiftAskRequestDetailView({
    Key? key,
    // this.giftAskRequest,
  }) : super(key: key);

  // final GiftRequest? giftAskRequest;
  static const route = 'gift_ask_request_detail_view';

  final ChatRoomController chatRoomController = Get.find();

  final GiftAskRequest? giftAskRequest = Get.arguments as GiftAskRequest?;

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: const MyText('Gift Request Detail'),
      assetPath: 'assets/images/notification-background.png',
      child: giftAskRequest == null
          ? const Center(
              child: Text('No Request Data Found'),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Text(giftAskRequest.toString())
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: GiftAskRequesterDetailGiverWidget(giftAskRequest: giftAskRequest),
                  ),
                  GiftAskRequestDetailCommentWidget(
                      giftAskRequest: giftAskRequest!),
                  GiftAskRequestDetailLocationAndGiftDetailsWidget(giftAskRequest: giftAskRequest!, chatRoomController: chatRoomController),
                  GiftAskRequestDetailDecisionWidget(giftAskRequest: giftAskRequest!),
                  GiftAskRequestDetailMapWidget(giftAskRequest: giftAskRequest!),
                ],
              ),
            ),
    );
  }
}

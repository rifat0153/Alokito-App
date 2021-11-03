import 'package:alokito_new/models/gift_ask_request.dart/gift_ask_request.dart';
import 'package:alokito_new/modules/gift_request_detail/widgets/gift_request_decision_widget.dart';
import 'package:alokito_new/modules/gift_request_detail/widgets/gift_request_map_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_request/gift_request.dart';
import '../../../shared/skeleton_widget.dart';
import '../../../shared/widget/my_text.dart';


class GiftAskRequestDetailView extends StatelessWidget {
  GiftAskRequestDetailView({
    Key? key,
    // this.giftAskRequest,
  }) : super(key: key);

  // final GiftRequest? giftAskRequest;
  static const route = 'gift_ask_request_detail_view';

  // final GiftAskRequestDetailController controller = Get.find();

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
                  Text(giftAskRequest.toString())
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  //   child: GiftRequesterDetailWidget(giftAskRequest: giftAskRequest),
                  // ),
                  // GiftCommentWidget(giftAskRequest: giftAskRequest),
                  // GiftRequesteLocationAndGiftDetailsWidget(giftAskRequest: giftAskRequest!),
                  // GiftRequestDetailDecisionWidget(giftAskRequest: giftAskRequest!),
                  // GiftRequestDetailMapWidget(giftAskRequest: giftAskRequest!),
                ],
              ),
            ),
    );
  }
}

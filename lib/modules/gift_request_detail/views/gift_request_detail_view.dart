import 'package:alokito_new/modules/gift_request_detail/widgets/gift_request_detail_decision_widget.dart';
import 'package:alokito_new/modules/gift_request_detail/widgets/gift_request_detail_map_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_request/gift_request.dart';
import '../../../shared/skeleton_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../controllers/gift_request_detail_controller.dart';
import '../widgets/gift_request_detail_comment_widget.dart';
import '../widgets/gift_request_detail_location_gift_details_widget.dart';
import '../widgets/gift_requester_detail_widget.dart';

class GiftRequestDetailView extends StatelessWidget {
  GiftRequestDetailView({
    Key? key,
    // this.giftRequest,
  }) : super(key: key);

  // final GiftRequest? giftRequest;
  static const route = 'gift_request_detail_view';

  final GiftRequestDetailController controller = Get.find();

  final GiftRequest? giftRequest = Get.arguments as GiftRequest?;

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: const MyText('Gift Request Detail'),
      assetPath: 'assets/images/notification-background.png',
      child: giftRequest == null
          ? const Center(
              child: Text('No Request Data Found'),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: GiftRequesterDetailWidget(giftRequest: giftRequest),
                  ),
                  GiftCommentWidget(giftRequest: giftRequest),
                  GiftRequesteLocationAndGiftDetailsWidget(giftRequest: giftRequest!),
                  GiftRequestDetailDecisionWidget(giftRequest: giftRequest!),
                  GiftRequestDetailMapWidget(giftRequest: giftRequest!),
                ],
              ),
            ),
    );
  }
}

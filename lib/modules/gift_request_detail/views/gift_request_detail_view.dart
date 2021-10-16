import 'package:alokito_new/modules/gift_request_detail/widgets/requester_detail_widget.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/modules/gift_request_detail/controllers/gift_request_detail_controller.dart';

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
          : Column(
              children: [
                RequesterDetailWidget(giftRequest: giftRequest),
              ],
            ),
    );
  }
}

import 'package:alokito_new/modules/gift_request_detail/widgets/gift_request_detail_feedback_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_request/gift_request.dart';
import '../../../shared/config.dart';
import '../../../shared/widget/my_text.dart';
import '../../notification/gift_giver/widgets/feedback_widget.dart';
import '../controllers/gift_request_detail_controller.dart';

class GiftRequestDetailDecisionWidget extends StatelessWidget {
  GiftRequestDetailDecisionWidget({
    Key? key,
    required this.giftRequest,
  }) : super(key: key);

  final GiftRequest giftRequest;

  final GiftRequestDetailController controller = Get.find<GiftRequestDetailController>();

  @override
  Widget build(BuildContext context) {
    //*************************** If its requester notification   ********************************
    if (giftRequest.requester.id == controller.currentUserInfo?.id) {
      return giftRequest.giftRequestStatus.when(
        // Pending
        pending: () => MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          height: 0,
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
          color: giftAskColor,
          child: const MyText('r Cancel', color: Colors.white),
        ),
        // Confirmed
        confirmed: () => Obx(
          () => controller.loading.value
              ? const CupertinoActivityIndicator(radius: 14)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // Accept Gift by requester
                        controller.updateGiftRequestStatus(
                          giftRequest,
                          'accepted',
                          const GiftRequestStatus.confirmed(),
                        );
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      height: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      color: giftAskColor,
                      child: const MyText('r Accept Gift', color: Colors.white),
                    ),
                    const SizedBox(width: 30),
                    MaterialButton(
                      onPressed: () {
                        // Cancel GiftRequest by requester
                        controller.updateGiftRequestStatus(
                          giftRequest,
                          'canceledByRequester',
                          const GiftRequestStatus.canceledByRequester(),
                        );
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      height: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                      color: giftAskColor,
                      child: const MyText('r Cancel', color: Colors.white),
                    )
                  ],
                ),
        ),
        // Canceled by giver
        canceledByGiver: () => MyText(
          'r Request Canceled by ${giftRequest.gift.user!.userName}',
          textAlign: TextAlign.center,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
        // Canceled by requester
        canceledByRequester: () => const MyText(
          'r Request Canceled by You',
          textAlign: TextAlign.center,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
        // Accepted by giver
        accepted: () => const MyText(
          'r Gift Accepted by You',
          textAlign: TextAlign.center,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
        // Gift Delivered
        delivered: () => giftRequest.messageForGiverSent == true
            ? Column(
                children: [
                  const MyText('r Gift Received', color: Colors.blueAccent),
                ],
              )
            : Column(
                children: [
                  const MyText('r Gift Received', color: Colors.blueAccent),
                  MaterialButton(
                    onPressed: () {
                      Get.dialog(GiftRequestDetailFeedbackWidget(giftRequest: giftRequest, isRequester: true));
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    height: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    color: giftAskColor,
                    child: const MyText('r Done', color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
      );
    }

    // ************************* If its giver notification ************************

    return giftRequest.giftRequestStatus.when(
      // Pending
      pending: () => Obx(
        () => controller.loading.value
            ? const CupertinoActivityIndicator()
            : MaterialButton(
                onPressed: () {
                  controller.updateGiftRequestStatus(
                    giftRequest,
                    'confirmed',
                    const GiftRequestStatus.confirmed(),
                  );
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                height: 0,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                color: giftAskColor,
                child: const MyText('Accept for confirmation', color: Colors.white),
              ),
      ),
      // Confirmed
      confirmed: () => const MyText(
        'Gift Accepted by You\n Waiting for confirmation',
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
      // Canceled by giver
      canceledByGiver: () => const MyText(
        'Request Canceled by',
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      // Canceled by requester
      canceledByRequester: () => Column(
        children: [
          const MyText('Request Canceled by', color: Colors.red, fontWeight: FontWeight.bold),
          MyText(
            giftRequest.requester.userName,
            textAlign: TextAlign.center,
            fontSize: 25,
          ),
        ],
      ),
      // Gift Accepted
      accepted: () => Column(
        children: [
          MyText('Gift Accepted by ${giftRequest.requester.userName}',
              textAlign: TextAlign.center, color: Colors.green, fontWeight: FontWeight.bold),
          Obx(() => controller.loading.value
              ? const CupertinoActivityIndicator()
              : MaterialButton(
                  onPressed: () {
                    controller.updateGiftRequestStatus(
                      giftRequest,
                      'delivered',
                      const GiftRequestStatus.delivered(),
                    );
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  height: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: giftAskColor,
                  child: const MyText('Done', color: Colors.white, fontWeight: FontWeight.bold),
                )),
        ],
      ),
      // Delivered
      delivered: () => giftRequest.messageForRequesterSent
          ? const MyText('Delivered', color: Colors.blueAccent)
          : Column(
              children: [
                const MyText('Delivered', color: Colors.blueAccent),
                MaterialButton(
                  onPressed: () {
                    Get.dialog(GiftRequestDetailFeedbackWidget(giftRequest: giftRequest, isRequester: false));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  height: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: giftAskColor,
                  child: const MyText('Done', color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
    );
  }
}

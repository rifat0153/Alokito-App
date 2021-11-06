import 'package:alokito_new/modules/gift_ask_request_detail/widgets/gift_ask_request_detail_feedback_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';
import '../../../shared/config.dart';
import '../../../shared/widget/my_text.dart';
import '../controllers/gift_ask_request_detail_controller.dart';

class GiftAskRequestDetailDecisionWidget extends StatelessWidget {
  GiftAskRequestDetailDecisionWidget({
    Key? key,
    required this.giftAskRequest,
  }) : super(key: key);

  final GiftAskRequest giftAskRequest;

  final GiftAskRequestDetailController controller = Get.find<GiftAskRequestDetailController>();

  @override
  Widget build(BuildContext context) {
    //*************************** If its requester notification   ********************************
    if (giftAskRequest.giftAsk.user.id == controller.currentUserInfo?.id) {
      return giftAskRequest.giftAskRequestStatus.when(
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
                        controller.updateGiftAskRequestStatus(
                          giftAskRequest,
                          'accepted',
                          const GiftAskRequestStatus.confirmed(),
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
                        controller.updateGiftAskRequestStatus(
                          giftAskRequest,
                          'canceledByRequester',
                          const GiftAskRequestStatus.canceledByRequester(),
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
          'r Request Canceled by ${giftAskRequest.giftAsk.user.userName}',
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
        delivered: () => giftAskRequest.messageForGiverSent
            ? const MyText('r Gift Received', color: Colors.blueAccent)
            : Column(
                children: [
                  const MyText('r Gift Received', color: Colors.blueAccent),
                  MaterialButton(
                    onPressed: () {
                      Get.dialog(
                        GiftAskRequestDetailFeedbackWidget(
                            giftAskRequest: giftAskRequest,
                            isRequester: controller.isCurrentUserRequester(giftAskRequest)),
                      );
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

    return giftAskRequest.giftAskRequestStatus.when(
      // Pending
      pending: () => Obx(
        () => controller.loading.value
            ? const CupertinoActivityIndicator()
            : MaterialButton(
                onPressed: () {
                  controller.updateGiftAskRequestStatus(
                    giftAskRequest,
                    'confirmed',
                    const GiftAskRequestStatus.confirmed(),
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
            giftAskRequest.giver.userName,
            textAlign: TextAlign.center,
            fontSize: 25,
          ),
        ],
      ),
      // Gift Accepted
      accepted: () => Column(
        children: [
          MyText('Gift Accepted by ${giftAskRequest.giver.userName}',
              textAlign: TextAlign.center, color: Colors.green, fontWeight: FontWeight.bold),
          Obx(() => controller.loading.value
              ? const CircularProgressIndicator()
              : MaterialButton(
                  onPressed: () {
                    controller.updateGiftAskRequestStatus(
                      giftAskRequest,
                      'delivered',
                      const GiftAskRequestStatus.delivered(),
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
      delivered: () => giftAskRequest.messageForRequesterSent
          ? const MyText('Delivered', color: Colors.blueAccent)
          : Column(
              children: [
                const MyText('g Delivered', color: Colors.blueAccent),
                MaterialButton(
                  onPressed: () {
                    // SHow the feedback widget, show requester/giver image based on isRequester value
                    Get.dialog(GiftAskRequestDetailFeedbackWidget(
                      giftAskRequest: giftAskRequest,
                      isRequester: controller.isCurrentUserRequester(giftAskRequest),
                    ));
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

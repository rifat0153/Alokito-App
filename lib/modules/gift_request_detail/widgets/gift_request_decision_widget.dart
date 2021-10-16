import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver/widgets/feedback_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftRequestDetailDecisionWidget extends StatelessWidget {
  const GiftRequestDetailDecisionWidget({
    Key? key,
    required this.giftRequest,
  }) : super(key: key);

  final GiftRequest giftRequest;

  @override
  Widget build(BuildContext context) {
    final currentUserId = Get.find<AuthController>()
        .currentUserInfo
        .value
        .maybeWhen(data: (user) => user.id ?? '', orElse: () => '');

    //*************************** If its requester notification   ********************************
    if (giftRequest.requester.id == currentUserId) {
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
        confirmed: () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: giftAskColor,
              child: const MyText('r Accept Gift', color: Colors.white),
            ),
            const SizedBox(width: 30),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              height: 0,
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              color: giftAskColor,
              child: const MyText('r Cancel', color: Colors.white),
            )
          ],
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
                      Get.dialog(FeedbackWidget(giftReceiver: giftRequest, isRequester: true));
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
      pending: () => MaterialButton(
        onPressed: () {
          
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        height: 0,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: giftAskColor,
        child: const MyText('Accept for confirmation', color: Colors.white),
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
          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            height: 0,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: giftAskColor,
            child: const MyText('Done', color: Colors.white, fontWeight: FontWeight.bold),
          ),
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
                    Get.dialog(FeedbackWidget(giftReceiver: giftRequest, isRequester: false));
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

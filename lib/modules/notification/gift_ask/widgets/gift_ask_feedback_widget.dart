import 'dart:ui';

import '../../../../models/gift_ask/gift_ask_giver.dart';
import '../controllers/gift_ask_notification_controller.dart';
import '../../../../shared/config.dart';
import '../../../../shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftAskFeedbackWidget extends StatelessWidget {
  GiftAskFeedbackWidget({
    Key? key,
    required this.giftAskGiver,
    required this.isRequester,
  }) : super(key: key);

  final bool isRequester;
  final GiftAskGiver? giftAskGiver;

  final GiftAskNotificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.5, sigmaY: 10.5),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          // height: 800,
          // width: Get.size.width,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/submit-feedback.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8),
                CircleAvatar(
                  backgroundImage: NetworkImage(giftAskGiver!.requester.imageUrl),
                  radius: 30,
                ),
                const SizedBox(height: 8),
                MyText(giftAskGiver!.requester.userName),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 0, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        fillColor: Colors.grey[400],
                        // hoverColor: Colors.grey,
                        filled: true,
                        hintText: 'e.g. Thanks in advance for your kind consideration'),
                    maxLines: 3,
                    onChanged: (value) => {
                      isRequester
                          ? controller.messageForGiver.value = value
                          : controller.messageForRequester.value = value,
                      print(controller.messageForGiver.value),
                      print(controller.messageForRequester.value),
                    },
                    onSubmitted: (value) => {},
                  ),
                ),
                _RatingWidget(isRequester: isRequester),
                MaterialButton(
                  color: giftAddFormSubmitColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  onPressed: () async {
                    await Get.find<GiftAskNotificationController>().doneGiftRequestByGiver(giftAskGiver!);
                    isRequester
                        ? await controller.messageForGiverAndRating(giftAskGiver!)
                        : await controller.messageForRequesterAndRating(giftAskGiver!);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('send'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RatingWidget extends StatelessWidget {
  _RatingWidget({Key? key, required this.isRequester}) : super(key: key);

  bool isRequester;

  final GiftAskNotificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 5; i++)
          Obx(
            () => IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              constraints: const BoxConstraints(maxWidth: 30),
              key: ValueKey(i.toString()),
              onPressed: () {
                isRequester ? controller.giverRating.value = i + 1 : controller.requesterRating.value = i + 1;

                print(controller.giverRating.value);
                print(controller.requesterRating.value);
              },
              icon: Icon(
                Icons.star,
                color: isRequester
                    ? i < controller.giverRating.value
                        ? Colors.orange
                        : Colors.black
                    : i < controller.requesterRating.value
                        ? Colors.orange
                        : Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}

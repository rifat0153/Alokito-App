import 'dart:ui';

import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/modules/notification/gift_giver/gift_giver_notification_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedbackWidget extends StatelessWidget {
  FeedbackWidget({Key? key, required this.giftReceiver, required this.isRequester}) : super(key: key);

  final bool isRequester;
  final GiftReceiver? giftReceiver;

  final GiftGiverNotificationController controller = Get.find();

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
                  backgroundImage: NetworkImage(giftReceiver!.requester.imageUrl),
                  radius: 30,
                ),
                const SizedBox(height: 8),
                MyText(giftReceiver!.requester.userName),
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
               
                    },
                    onSubmitted: (value) => {},
                  ),
                ),
                _RatingWidget(isRequester: isRequester),
                MaterialButton(
                  color: giftAddFormSubmitColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    isRequester
                        ? controller.messageForGiverAndRating(giftReceiver!)
                        : controller.messageForRequesterAndRating(giftReceiver!);
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

  final GiftGiverNotificationController controller = Get.find();

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

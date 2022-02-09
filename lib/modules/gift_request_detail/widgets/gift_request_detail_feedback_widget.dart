import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/config.dart';
import '../../../../shared/widget/my_text.dart';
import '../../../models/gift_request/gift_request.dart';
import '../controllers/gift_request_detail_controller.dart';

class GiftRequestDetailFeedbackWidget extends StatelessWidget {
  GiftRequestDetailFeedbackWidget({Key? key, required this.giftRequest, required this.isRequester})
      : super(key: key);

  final bool isRequester;
  final GiftRequest? giftRequest;

  final GiftRequestDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    print({'inFeedBackWidget_isRequester': isRequester});

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.5, sigmaY: 10.5),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          // height: 800,
          // width: Get.size.width,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('assets/images/submit-feedback.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    isRequester ? giftRequest!.requester.imageUrl : giftRequest!.gift.user!.imageUrl,
                  ),
                  radius: 30,
                ),
                const SizedBox(height: 8),
                MyText(isRequester ? giftRequest!.requester.userName : giftRequest!.gift.user!.userName),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        fillColor: Colors.grey[400],
                        // hoverColor: Colors.grey,
                        filled: true,
                        hintText: 'e.g. Thanks in advance for your kind consideration'),
                    maxLines: 3,
                    onChanged: (value) => {controller.message.value = value},
                    onSubmitted: (value) => {controller.message.value = value},
                  ),
                ),
                _RatingWidget(isRequester: isRequester),
                MaterialButton(
                  color: giftAddFormSubmitColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  onPressed: () async {
                    print('Change Rating and Message');
                    print({'rating': controller.rating.value, 'message': controller.message.value});

                    await controller.updateUserRatingAndAddMessage(giftRequest!);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Obx(
                        () => controller.loading.value ? const CupertinoActivityIndicator() : const Text('send')),
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

  final bool isRequester;

  final GiftRequestDetailController controller = Get.find();

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
                controller.rating.value = i + 1;

                print(controller.rating.value);
              },
              icon: Icon(
                Icons.star,
                color: i < controller.rating.value ? Colors.orange : Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}

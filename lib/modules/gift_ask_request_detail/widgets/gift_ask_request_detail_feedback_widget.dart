import 'dart:ui';

import 'package:alokito_new/models/gift_ask_request.dart/gift_ask_request.dart';
import 'package:alokito_new/modules/gift_ask_request_detail/controllers/gift_ask_request_detail_controller.dart';

import '../../../../models/gift_request/gift_request.dart';
import '../../../../shared/config.dart';
import '../../../../shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftAskRequestDetailFeedbackWidget extends StatelessWidget {
  GiftAskRequestDetailFeedbackWidget({Key? key, required this.giftAskRequest, required this.isRequester})
      : super(key: key);

  final bool isRequester;
  final GiftAskRequest? giftAskRequest;

  final GiftAskRequestDetailController controller = Get.find();

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
            image: const DecorationImage(image: AssetImage('assets/images/submit-feedback.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      isRequester ? giftAskRequest!.giftAsk.user.imageUrl : giftAskRequest!.giver.imageUrl),
                  radius: 30,
                ),
                const SizedBox(height: 8),
                MyText(isRequester ? giftAskRequest!.giftAsk.user.userName : giftAskRequest!.giver.userName),
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
                  onPressed: () {
                    print('Change Rating and Message');
                    print({'rating': controller.rating.value, 'message': controller.message.value});
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

  final bool isRequester;

  final GiftAskRequestDetailController controller = Get.find();

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

import 'dart:ui';

import 'package:alokito_new/controller/gift/gift_request_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePopUpWidget extends StatelessWidget {
  final GiftRequestController controller = Get.find();

  MessagePopUpWidget({required this.giftGiver});

  GiftGiver giftGiver;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          // height: 300,
          // width: Get.size.width,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Send a message for this gift'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        fillColor: Colors.grey[400],
                        // hoverColor: Colors.grey,
                        filled: true,
                        hintText:
                            'e.g. Thanks in advance for your kind consideration'),
                    maxLines: 5,
                    onChanged: (value) =>
                        controller.requesterMessage.value = value,
                    onSubmitted: (value) =>
                        controller.requesterMessage.value = value,
                  ),
                ),
                Obx(
                  () => controller.loading.value
                      ? CircularProgressIndicator()
                      : MaterialButton(
                          color: GIFT_ADD_FORM_SUBMIT,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            controller.requestGift(
                                giftGiver: giftGiver, context: context);
                            // controller.showDialog.value = false;
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: const Text('send'),
                          ),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
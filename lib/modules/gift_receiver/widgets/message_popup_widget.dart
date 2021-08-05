import 'dart:ui';

import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePopUpWidget extends StatelessWidget {
  MessagePopUpWidget({required this.giftGiver});
  final GiftReceiverController controller = Get.find();

  final GiftGiver giftGiver;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                const Text('Send a message for this gift'),
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
                    maxLines: 5,
                    onChanged: (value) => controller.requesterMessage.value = value,
                    onSubmitted: (value) => controller.requesterMessage.value = value,
                  ),
                ),
                Obx(
                  () => controller.loading.value
                      ? const CircularProgressIndicator()
                      : MaterialButton(
                          color: giftAddFormSubmitColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            controller.addGiftRequestAndNotification(giftGiver);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text('send'),
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

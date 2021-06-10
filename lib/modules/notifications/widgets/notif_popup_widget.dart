import 'dart:ui';

import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifPopupWidget extends StatelessWidget {
  NotifPopupWidget({required this.giftNotification});

  final GiftNotification giftNotification;

  final GiftNotificationController controller = Get.find();

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
            image: const DecorationImage(
                image: AssetImage('assets/images/submit-feedback.png'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    giftNotification.requesterImageUrl,
                  ),
                ),
                const SizedBox(height: 8),
                Text(giftNotification.requesterName, style: boldFontStyle),
                const SizedBox(height: 8),
                const Text('give rating'),
                _StarWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
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
                        controller.feedbakcForRequester.value = value,
                    onSubmitted: (value) =>
                        controller.feedbakcForRequester.value = value,
                  ),
                ),
                Obx(
                  () => controller.loading.value
                      ? CircularProgressIndicator()
                      : MaterialButton(
                          color: GIFT_ADD_FORM_SUBMIT,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text('Submit', style: whiteFontStyle),
                          ),
                          onPressed: () {
                            controller.addDeliveryNotifications(
                                giftNotification: giftNotification);
                            Get.back();
                            showDialog(
                                context: context,
                                builder: (_) => ThanksWidget());
                          },
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

class ThanksWidget extends StatelessWidget {
  const ThanksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/submit-feedback.png'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 100,
          width: Get.width - 50,
          child: Column(
            children: [
              Text('Thank You', style: boldFontStyle),
              const Text('Thanks a lot for your kind support.'),
              const Text('you are such a wonderful person.'),
            ],
          ),
        ),
      ),
    );
  }
}

class _StarWidget extends StatelessWidget {
  _StarWidget({Key? key}) : super(key: key);

  final GiftNotificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => IconButton(
            icon: const Icon(Icons.star),
            color: controller.ratingForRequester.value > 0
                ? Colors.orange
                : Colors.black,
            onPressed: () {
              controller.ratingForRequester.value = 1;
            },
          ),
        ),
        Obx(
          () => IconButton(
            icon: const Icon(Icons.star),
            color: controller.ratingForRequester.value > 1
                ? Colors.orange
                : Colors.black,
            onPressed: () {
              controller.ratingForRequester.value = 2;
            },
          ),
        ),
        Obx(
          () => IconButton(
            icon: const Icon(Icons.star),
            color: controller.ratingForRequester.value > 2
                ? Colors.orange
                : Colors.black,
            onPressed: () {
              controller.ratingForRequester.value = 3;
            },
          ),
        ),
        Obx(
          () => IconButton(
            icon: const Icon(Icons.star),
            color: controller.ratingForRequester.value > 3
                ? Colors.orange
                : Colors.black,
            onPressed: () {
              controller.ratingForRequester.value = 4;
            },
          ),
        ),
        Obx(
          () => IconButton(
            icon: const Icon(Icons.star),
            color: controller.ratingForRequester.value > 4
                ? Colors.orange
                : Colors.black,
            onPressed: () {
              controller.ratingForRequester.value = 5;
            },
          ),
        ),
      ],
    );
  }
}

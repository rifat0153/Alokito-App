import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  GiftNotificationController giftNotificationController =
      Get.put(GiftNotificationController());

  @override
  Widget build(BuildContext context) {
    print(
        'In notview widget:  ${giftNotificationController.giftNotificationList.length} ');

    return Obx(
      () => ListView.builder(
        itemCount: giftNotificationController.giftNotificationList.length,
        itemBuilder: (c, i) => Card(
          child: Text(
              giftNotificationController.giftNotificationList[i].giverName),
        ),
      ),
    );
  }
}

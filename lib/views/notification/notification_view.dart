import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

class NotificationView extends StatelessWidget {
  static const route = 'notificationview';
  final GiftNotificationController giftNotificationController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(
        'In notview widget:  ${giftNotificationController.giftNotificationList.length} ');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: LineIcon.arrowLeft(color: Colors.black),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/notification-background.png'),
                fit: BoxFit.fill),
          ),
          child: Obx(
            () => ListView.builder(
              itemCount: giftNotificationController.giftNotificationList.length,
              itemBuilder: (c, i) => Card(
                child: ListTile(
                  leading: Text(giftNotificationController
                      .giftNotificationList[i].giverName),
                  title: Text(giftNotificationController
                      .giftNotificationList[i].requesterName),
                  trailing: Text(convertGiftNotificationTypeToString(
                      giftNotificationType: giftNotificationController
                          .giftNotificationList[i].notificationType)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

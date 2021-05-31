import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
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
          child: NotificationListWidget(
              giftNotificationController: giftNotificationController),
        ),
      ),
    );
  }
}

class NotificationListWidget extends StatelessWidget {
  const NotificationListWidget({
    Key? key,
    required this.giftNotificationController,
  }) : super(key: key);

  final GiftNotificationController giftNotificationController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: giftNotificationController.giftNotificationList.length,
        itemBuilder: (c, i) {
          if (giftNotificationController
                  .giftNotificationList[i].notificationType ==
              GiftNotificationType.packageRequested) {
            return GiftRequestWidget(
              key: ValueKey(
                  giftNotificationController.giftNotificationList[i].id),
              giftNotificationController: giftNotificationController,
              giftNotification:
                  giftNotificationController.giftNotificationList[i],
            );
          }
          return GiftConfirmedWidget(
            key:
                ValueKey(giftNotificationController.giftNotificationList[i].id),
            giftNotificationController: giftNotificationController,
            giftNotification:
                giftNotificationController.giftNotificationList[i],
          );
        },
      ),
    );
  }
}

class GiftRequestWidget extends StatelessWidget {
  const GiftRequestWidget(
      {required Key key,
      required this.giftNotificationController,
      required this.giftNotification})
      : super(key: key);

  final GiftNotification giftNotification;
  final GiftNotificationController giftNotificationController;

  @override
  Widget build(BuildContext context) {
    var giftType = convertGiftType(giftType);
    
    return Card(
      child: ListTile(
        leading: Text('Your gift offer ${} is requsted by ${giftNotification.requesterName}  ${giftNotification.giverName}'),
        title: Text(giftNotification.requesterName),
        trailing: Text(convertGiftNotificationTypeToString(
            giftNotificationType: giftNotification.notificationType)),
      ),
    );
  }
}

class GiftConfirmedWidget extends StatelessWidget {
  const GiftConfirmedWidget(
      {required Key key,
      required this.giftNotificationController,
      required this.giftNotification})
      : super(key: key);

  final GiftNotification giftNotification;
  final GiftNotificationController giftNotificationController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(giftNotification.giverName),
        title: Text(giftNotification.requesterName),
        trailing: Text(convertGiftNotificationTypeToString(
            giftNotificationType: giftNotification.notificationType)),
      ),
    );
  }
}

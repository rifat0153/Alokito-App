import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/views/notification/notification_details_view.dart';
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
          if (giftNotificationController
                  .giftNotificationList[i].notificationType ==
              GiftNotificationType.packageConfirmed) {
            return GiftConfirmedWidget(
              key: ValueKey(
                  giftNotificationController.giftNotificationList[i].id),
              giftNotificationController: giftNotificationController,
              giftNotification:
                  giftNotificationController.giftNotificationList[i],
            );
          }
          return Text('NO DAta');
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
    giftNotificationController.resetNotificationStatus();

    var giftType = convertGiftType(giftNotification.giftType);
    var date = DateTime.now();
    var notificationCreatedAt = DateTime.fromMillisecondsSinceEpoch(
        giftNotification.createdAt.millisecondsSinceEpoch);
    var difference = date.difference(notificationCreatedAt).inHours;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => Get.toNamed(NotificationDetailsView.route,
            arguments: giftNotification),
        child: Card(
          child: Row(
            children: [
              const SizedBox(width: 8),
              Flexible(
                flex: 1,
                child: Image.network(
                  giftNotification.giftImageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        // overflow: TextOverflow.visible,
                        // softWrap: false,
                        text: TextSpan(
                          text: 'Your gift offer ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: '$giftType',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(text: ' is requsted by '),
                            TextSpan(
                                text: '${giftNotification.requesterName}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$difference hours ago'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
    var giftType = convertGiftType(giftNotification.giftType);
    var date = DateTime.now();
    var notificationCreatedAt = DateTime.fromMillisecondsSinceEpoch(
        giftNotification.createdAt.millisecondsSinceEpoch);
    var difference = date.difference(notificationCreatedAt).inHours;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Image.asset(
                'assets/images/notification-background.png',
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: "You've confirmed the Request of ",
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: '${giftNotification.requesterName}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$difference hours ago'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

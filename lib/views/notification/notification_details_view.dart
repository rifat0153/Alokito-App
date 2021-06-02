import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/views/notification/notification_view.dart';
import 'package:alokito_new/views/notification/widgets/location_widget.dart';
import 'package:alokito_new/views/notification/widgets/user_detail_widget.dart';
import 'package:alokito_new/views/notification/widgets/user_location_widget.dart';
import 'package:alokito_new/widgets/gift_giver/user_joining_distance_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

class NotificationDetailsView extends StatelessWidget {
  static const route = 'notification_details_view';

  GiftNotification giftNotification = Get.arguments as GiftNotification;

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.1),
              UserDetailWidget(giftNotification: giftNotification),
              UserLocationWidget(giftNotification: giftNotification),
              LocationWidget(giftNotification: giftNotification),
            ],
          ),
        ),
      ),
    );
  }
}

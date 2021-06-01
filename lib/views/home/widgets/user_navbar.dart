import 'dart:collection';

import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/views/notification/notification_view.dart';
import 'package:badges/badges.dart';
import 'package:line_icons/line_icons.dart';

import '../../map/geo_locations.dart';
import '../../map/geo_map_view.dart';
import '../../map/my_map_view.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import '../../connection_views/connection_view.dart';

class UserNavbar extends StatelessWidget {
  final height = Get.size.height;
  final width = Get.size.width;

  final GiftNotificationController giftNotificationController = Get.find();
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    giftNotificationController.bindNotificationStream();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.home, color: Colors.white, size: height * 0.05),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(NotificationView.route);
          },
          child: Badge(
            badgeContent: authController.currentUserHasNotifications.value
                ? Text('!')
                : Text(''),
            child: Icon(Icons.notifications,
                color: Colors.white, size: height * 0.05),
            badgeColor: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.circle, color: Colors.red, size: height * 0.06),
        ),
        GestureDetector(
          onTap: () {
            Get.to(ConnectionView());
          },
          child: Icon(Icons.message, color: Colors.white, size: height * 0.045),
        ),
        GestureDetector(
          onTap: () => Get.find<AuthController>().authService.value.signOut(),
          child: Icon(Icons.map, color: Colors.white, size: height * 0.035),
        ),
      ],
    );
  }
}

import 'dart:collection';

import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/connection/connection_view.dart';
import 'package:alokito_new/modules/notification/notification_view.dart';
import 'package:badges/badges.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class UserNavbar extends StatelessWidget {
  final height = Get.size.height;
  final width = Get.size.width;

  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.home, color: Colors.white, size: height * 0.05),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => NotificationView());
          },
          child: true
              ? Badge(
                  badgeContent: Text('!'),
                  child: Icon(Icons.notifications, color: Colors.white, size: height * 0.05),
                  badgeColor: Colors.white,
                )
              : Icon(Icons.notifications, color: Colors.white, size: height * 0.05),
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.circle, color: Colors.red, size: height * 0.06),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => ConnectionView());
          },
          child: Icon(Icons.message, color: Colors.white, size: height * 0.045),
        ),
        GestureDetector(
          onTap: () {
            Get.find<AuthController>().authService.value.signOut();
          },
          child: Icon(Icons.map, color: Colors.white, size: height * 0.035),
        ),
      ],
    );
  }
}

import '../../auth/controllers/auth_controller.dart';
import '../../notification/notification_view.dart';
import '../../../shared/my_drawer_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
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
          onTap: () {
            Get.to(MyDrawer());
          },
          child: Icon(Icons.home, color: Colors.white, size: height * 0.05),
        ),
        Obx(
          () => Badge(
            badgeContent: 
             Text(authController.newNotifications.value.toString()),
            badgeColor: Colors.white,
            child: Icon(Icons.notifications, color: Colors.white, size: height * 0.05),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.circle, color: Colors.red, size: height * 0.06),
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.message, color: Colors.white, size: height * 0.045),
        ),
        GestureDetector(
          onTap: () {
            Get.find<AuthController>().signOut();
          },
          child: Icon(Icons.map, color: Colors.white, size: height * 0.035),
        ),
      ],
    );
  }
}

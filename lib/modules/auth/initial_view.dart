import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/auth/login_controller.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatelessWidget {
  InitialView({Key? key}) : super(key: key);
  final AuthController authController = Get.put(AuthController());
  final LoginController loginController = Get.put(LoginController());
  final GiftNotificationController giftNotificationController =
      Get.put(GiftNotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationWrapper(),
    );
  }
}

import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/login_controller.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/auth/role_wrapper.dart';
import 'package:alokito_new/modules/home/home_view.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationWrapper extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final LoginController loginController = Get.put(LoginController());
  final GiftNotificationController giftNotificationController = Get.put(GiftNotificationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<AuthController>().authStream.value == null ? LoginView() : HomeView(),
    );
  }
}

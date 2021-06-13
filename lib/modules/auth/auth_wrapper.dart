import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/login_controller.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/auth/role_wrapper.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<AuthController>().authStream.value == null
          ? LoginView()
          : RoleWrapper(),
    );
  }
}

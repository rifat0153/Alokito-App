import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/login_controller.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/auth/role_wrapper.dart';
import 'package:alokito_new/modules/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class AuthenticationWrapper extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();
  final LoginController loginController = Get.put(LoginController());

  var keyValue = const Uuid().v4();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<AuthController>().authStream.value == null
          ? LoginView()
          : HomeView(
              key: ValueKey(keyValue),
            ),
    );
  }
}

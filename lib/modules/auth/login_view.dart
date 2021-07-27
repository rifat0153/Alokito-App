import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';
import 'login_controller.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../shared/my_name_input.dart';
import 'widgets/login_form.dart';
import 'widgets/register_form.dart';

class LoginView extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();
  final LoginController loginFormController = Get.find<LoginController>();
  static const route = 'loginview';

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => loginFormController.isLogin.value ? LoginForm() : RegisterForm(),
    );
  }
}

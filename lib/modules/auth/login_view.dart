import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';
import 'login_controller.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../shared/my_name_input.dart';
import 'widgets/login_form.dart';
import 'widgets/register-form.dart';

class LoginView extends StatefulWidget {
  final AuthController authController = Get.put(AuthController());
  final LoginController loginFormController = Get.put(LoginController());
  static const route = 'loginview';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLogin = true;

  final LoginController loginController = Get.put(LoginController());
  final AuthController authController = Get.put(AuthController());

  void setIslogin(bool value) {
    setState(() {
      isLogin = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLogin ? LoginForm(setIslogin) : RegisterForm(setIslogin);
  }
}

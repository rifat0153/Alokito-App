import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth/auth_controller.dart';
import '../../controller/auth/login_controller.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../shared/my_name_input.dart';
import '../../widgets/auth/login_form.dart';
import '../../widgets/auth/register-form.dart';

class LoginView extends StatefulWidget {
  final AuthController authController = Get.find();
  final LoginController loginFormController = Get.put(LoginController());

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLogin = true;

  void setIslogin(bool value) {
    setState(() {
      isLogin = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    EasyLoading.dismiss();

    return isLogin ? LoginForm(setIslogin) : RegisterForm(setIslogin);
  }
}

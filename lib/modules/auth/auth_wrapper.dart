import 'controllers/auth_controller.dart';
import 'widgets/login_reg_form.dart';
import '../home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class AuthenticationWrapper extends StatefulWidget {
  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  final AuthController authController = Get.find<AuthController>();
  final keyValue = const Uuid().v4();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // * Check if user is verified
      // if (authController.authStream.value != null) {
      //   if (!authController.authStream.value!.emailVerified) {
      //     return VerifyScreen();
      //   }
      // }

      // * User not registered
      if (authController.registering.value) {
        return authController.authStream.value != null && authController.authCompleted.value
            ? FutureBuilder(
                future: authController.getUserInfoAndSetCurrentUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Scaffold(
                    body: HomeView(
                      key: ValueKey(keyValue),
                    ),
                  );
                },
              )
            : const LoginRegFormView();
      } else {
        // * Already registered  user
        return authController.authStream.value != null
            ? FutureBuilder(
                future: authController.getUserInfoAndSetCurrentUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Scaffold(
                    body: HomeView(
                      key: ValueKey(keyValue),
                    ),
                  );
                },
              )
            : const LoginRegFormView();
      }
    });
  }
}

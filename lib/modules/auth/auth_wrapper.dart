import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/auth/controllers/login_controller.dart';
import 'package:alokito_new/modules/auth/views/verify_view.dart';
import 'package:alokito_new/modules/auth/widgets/login_reg_form.dart';
import 'package:alokito_new/modules/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class AuthenticationWrapper extends StatefulWidget {
  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  final AuthController authController = Get.find<AuthController>();
  final LoginController loginController = Get.put(LoginController());
  final keyValue = const Uuid().v4();

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();

  //   authController.getUserInfoAndSetCurrentUser();
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: const LoginRegFormView());
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth/auth_controller.dart';
import '../home/home_view.dart';

class R extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class RoleWrapper extends StatelessWidget {
  RoleWrapper({Key? key}) : super(key: key);

  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    Get.find<AuthController>().bindMyUserStream();

    return Obx(() => authController.currentUser.value.when(
        data: (localUser) {
          return localUser.role == 'admin' || localUser.id == null
              ? Container(
                  child: Center(
                    child: TextButton(
                      child: Text('Admin Panel'),
                      onPressed: () =>
                          authController.authService.value.signOut(),
                    ),
                  ),
                )
              : HomeView();
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Container())));
  }
}

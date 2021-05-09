import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth/auth_controller.dart';
import '../home/home_view.dart';

class RoleWrapper extends StatelessWidget {
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

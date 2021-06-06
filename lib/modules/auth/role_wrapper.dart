import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';
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
          authController.currentUserImageUrl.value = localUser.imageUrl ?? '';
          authController.currentUserName.value = localUser.userName;
          authController.currentUserCreatedAt.value = localUser.createdAt;
          authController.currentUserGiftOffered.value = localUser.giftOffered;
          authController.currentUserGiftReceived.value = localUser.giftReceived;
          authController.currentUserRating.value = localUser.averageRating;
          authController.currentUserTotalRating.value = localUser.totalRating;
          authController.currentUserPosition.value = localUser.position;
          authController.currentUserHasNotifications.value =
              localUser.hasNotifications;

          print(
              'current user ${authController.currentUserName.value} rating is: ${authController.currentUserRating.value}');
          print(
              'current user ${authController.currentUserName.value} has not: ${authController.currentUserHasNotifications.value}');

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
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Container())));
  }
}

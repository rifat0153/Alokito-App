import 'package:alokito_new/di/firebase_di.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../models/notification/notification.dart';
import '../service/notification_service.dart';

class NotificationController extends GetxController {
  NotificationController(this.notificationService);

  final NotificationService notificationService;

  final firstFetch = true.obs;
  final allFethced = false.obs;
  final loading = false.obs;
  final notificationList = const MyNotificationListStatus.loading().obs;

  final page = 0.obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();

    scrollController.addListener(() async {
      if (scrollController.position.atEdge && !allFethced.value) {
        if (scrollController.position.pixels != 0) {
          await getNotifications();
        }
      }
    });
  }

  @override
  Future onReady() async {
    super.onReady();

    await getNotifications();
  }

  Future<void> getNotifications() async {
    loading.value = true;
    page.value = page.value + 1;

    final res = await notificationService.getNotifications(
      userId: Get.find<AuthController>().currentUserInfo.value.maybeWhen(
            data: (user) => user.id ?? '',
            orElse: () => '',
          ),
      page: page.value,
      limit: 7,
    );

    if (firstFetch.value) {
      notificationList.value = res;

      firstFetch.value = false;
      print(res.maybeWhen(data: (data) => data, orElse: () => 'Not data'));
    } else {
      final List<MyNotification> existingList =
          notificationList.value.maybeWhen(data: (list) => list, orElse: () => []);

      var newLoadedData = <MyNotification>[];

      res.maybeWhen(
          data: (newData) {
            newLoadedData = newData;

            // All data fethced, since new request returned less than 7 value
            if (newData.length < 7) {
              allFethced.value = true;
            }

            final newList = [...existingList, ...newLoadedData];

            notificationList.value = MyNotificationListStatus.data(newList);
          },
          error: (e) => {MySnackbar.showErrorSnackbar(e)},
          orElse: () {});
    }

    loading.value = false;
  }
}

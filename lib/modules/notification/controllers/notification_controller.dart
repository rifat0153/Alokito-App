import 'package:alokito_new/di/firebase_di.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../../../models/notification/notification.dart';
import '../service/notification_service.dart';

class NotificationController extends GetxController {
  NotificationController(this.notificationService);

  final NotificationService notificationService;

  final notificationList = const MyNotificationListStatus.loading().obs;

  @override
  Future onReady() async {
    super.onReady();

    await getNotifications();
  }

  Future<void> getNotifications() async {
    final res = await notificationService.getNotifications(
      userId: Get.find<AuthController>().currentUserInfo.value.maybeWhen(
            data: (user) => user.id ?? '',
            orElse: () => '',
          ),
      page: 1,
    );

    notificationList.value = res;

    print(res.maybeWhen(data: (data) => data, orElse: () => 'Not data'));
  }
}

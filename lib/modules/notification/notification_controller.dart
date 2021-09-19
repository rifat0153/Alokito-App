import '../../models/notification/notification.dart';
import '../auth/controllers/auth_controller.dart';
import 'notification_exception.dart';
import 'notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  NotificationController();

  final NotificationService notificationService = NotificationService(FirebaseFirestore.instance);

  RxBool loading = RxBool(false);
  RxBool errors = false.obs;

  Rx<NotificationListStatus> notificationList = const NotificationListStatus.loading().obs;
  // Rx<List<MyNotification>> notificationList = Rx<List<MyNotification>>([]);

  @override
  void onInit() async {
    super.onInit();
  }

  void bindNotificationStream(String userId) {
    try {
      notificationList.bindStream(notificationService.streamAllNotifications(userId: userId));
      errors.value = false;
    } on NotificationException catch (e) {
      errors.value = true;
      // showSuccessOrErrorMessage(false, 'Check Internet', '', 'something went wrong');
    }
  }

  Future<void> addNotification({required String userId, required MyNotification notification}) async {
    await notificationService.add(notification: notification, userId: userId);
  }

  Future<void> showSuccessOrErrorMessage(bool result, String title, String success, String error) async {
    Get.back();
    result
        ? Get.snackbar(title, success, backgroundColor: Colors.green.withOpacity(0.5))
        : Get.snackbar(title, error, backgroundColor: Colors.red.withOpacity(0.5));
  }
}

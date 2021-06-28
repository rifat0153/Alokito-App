import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/notification/notification_service.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  NotificationController(this.notificationService);
  final NotificationService notificationService;

  RxBool loading = RxBool(false);
  Rx<List<Notification>> giftList = Rx<List<Notification>>([]);

  Future<void> addNotification({required String userId, required Notification notification}) async {
    var result = await notificationService.add(notification: notification, userId: userId);
  }
}

import 'package:alokito_new/models/my_state.dart/my_state.dart';
import 'package:get/get.dart';

import '../../models/notification/notification.dart';
import 'service/notification_service.dart';

class NotificationController extends GetxController {
  NotificationController(this.notificationService);

  final NotificationService notificationService;

  final  notificationList = const MyNotificationListStatus.loading().obs;
}

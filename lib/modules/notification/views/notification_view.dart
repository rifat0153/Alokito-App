import 'package:alokito_new/models/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/skeleton_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../gift_giver/gift_giver_notification_view.dart';
import '../controllers/notification_controller.dart';
import '../widgets/text_notification_widget.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);
  static const route = 'NotificationView';

  final NotificationController controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    final notificationController = Get.find<NotificationController>();

    return SkeletonWidget(
      titleWidget: const MyText('Notification', fontWeight: FontWeight.bold),
      assetPath: 'assets/images/notification-background.png',
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            _buildNotificationTile(notificationController),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationTile(NotificationController notificationController) {
    return Obx(
      () => notificationController.notificationList.value.when(
          data: (notificationList) {
            return Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notificationList.length,
                itemBuilder: (_, i) {
                  // if (notificationList[i].notificationType == 'giftRequest') {
                  //   return GiftNotificationView(
                  //     key: ValueKey(notificationList[i].createdAt),
                  //     notification: notificationList[i],
                  //   );
                  // }
                  // if (notificationList[i].notificationType == 'giftAskRequest') {}
                  // if (notificationList[i].notificationType == 'text') {
                  //   return TextNotificationWidget(
                  //     key: ValueKey(notificationList[i].createdAt),
                  //     notification: notificationList[i],
                  //   );
                  // }

                  // return const Text('data');

                  return NotificationTile(
                    key: ValueKey(i),
                    notification: notificationList[i],
                  );
                },
              ),
            );
          },
          empty: () => const Center(
                child: Text('No Notification'),
              ),
          loading: () => const CircularProgressIndicator(),
          error: (err) => Text(err)),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({required this.notification, Key? key}) : super(key: key);

  final MyNotification notification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(notification.notificationType),
      title: Text(notification.relatedDocId),
    );
  }
}

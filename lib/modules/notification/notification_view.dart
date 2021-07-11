import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/modules/notification/widgets/text_notification_widget.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'gift_giver/gift_giver_notification.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);

  NotificationController controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    controller.bindNotificationStream(Get.find<AuthController>().currentUser.value.id ?? '');
    Get.find<AuthController>().userDoesNotHaveNotification();

    return SkeletonWidget(
      titleWidget: MyText('Notification', fontSize: 20, fontWeight: FontWeight.bold),
      assetPath: 'assets/images/notification-background.png',
      child: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.notificationList.value.length,
                  itemBuilder: (_, i) {
                    if (controller.notificationList.value[i].notificationType == NotificationType.giftGiver) {
                      return GiftGiverNotification(
                        key: ValueKey(controller.notificationList.value[i].id),
                        notification: controller.notificationList.value[i],
                      );
                    }
                    if (controller.notificationList.value[i].notificationType == NotificationType.text) {
                      return TextNotificationWidget(
                        key: ValueKey(controller.notificationList.value[i].id),
                        notification: controller.notificationList.value[i],
                      );
                    }
                    return Text('data');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

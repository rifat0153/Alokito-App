import 'dart:math';

import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/notification/gift_ask/views/gift_ask_notification_view.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/modules/notification/widgets/text_notification_widget.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'gift_giver/gift_giver_notification_view.dart';

class NotificationView extends StatelessWidget {
  static const route = 'NotificationView';

  NotificationView({Key? key}) : super(key: key);

  final NotificationController controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    controller.bindNotificationStream(Get.find<AuthController>().currentUser.value.id ?? '');

    final notificationController = Get.find<NotificationController>();

    return SkeletonWidget(
      titleWidget: MyText('Notification', fontSize: 20, fontWeight: FontWeight.bold),
      assetPath: 'assets/images/notification-background.png',
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
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

  Obx _buildNotificationTile(NotificationController notificationController) {
    return Obx(
      () => notificationController.notificationList.value.when(
          data: (list) {
            return Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: list.length,
                itemBuilder: (_, i) {
                  if (list[i].notificationType == NotificationType.giftGiver) {
                    return GiftGiverNotificationView(
                      key: ValueKey(list[i].createdAt),
                      notification: list[i],
                    );
                  }
                  if (list[i].notificationType == NotificationType.giftAsk) {
                    return GiftAskNotificationView(
                      key: ValueKey(list[i].createdAt),
                      notification: list[i],
                    );
                  }
                  if (list[i].notificationType == NotificationType.text) {
                    return TextNotificationWidget(
                      key: ValueKey(list[i].createdAt),
                      notification: list[i],
                    );
                  }

                  return const Text('data');
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

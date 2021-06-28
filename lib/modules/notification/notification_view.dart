import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NotificationView extends StatelessWidget {
  NotificationController controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    controller.bindNotificationStream(Get.find<AuthController>().currentUser.value.id!);

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(MdiIcons.chevronLeft, size: 30, color: Colors.black),
            onPressed: () {},
          ),
          titleSpacing: 0,
          title: MyText('Notification', fontSize: 25, fontWeight: FontWeight.bold),
        ),
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/notification-background.png'), fit: BoxFit.cover)),
            ),
            Container(
              height: Get.height,
              width: Get.width,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  MyText(
                    'data',
                    color: Colors.black,
                  ),
                  Obx(
                    () => MyText(controller.notificationList.value.length.toString()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

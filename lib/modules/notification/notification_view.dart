import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/notification-background.png'), fit: BoxFit.cover)),
      ),
    );
  }
}

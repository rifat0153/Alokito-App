import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SkeletonWidget extends StatelessWidget {
  SkeletonWidget({required this.titleWidget, required this.assetPath, required this.child});

  Widget titleWidget;
  String assetPath;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(MdiIcons.chevronLeft, size: 30, color: Colors.black),
            onPressed: () => Get.back(),
          ),
          titleSpacing: 0,
          title: titleWidget,
        ),
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(assetPath), fit: BoxFit.cover)),
            ),
            child
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkeletonWidget extends StatelessWidget {
  const SkeletonWidget({required this.titleWidget, required this.assetPath, required this.child});

  final Widget titleWidget;
  final String assetPath;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
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

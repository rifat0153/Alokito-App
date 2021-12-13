import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkeletonWidget extends StatelessWidget {
  const SkeletonWidget({
    required this.titleWidget,
    required this.assetPath,
    required this.child,
    this.elevation = 0,
    this.centerTitle = false,
    this.extendBody = false,
  });

  final Widget titleWidget;
  final String assetPath;
  final Widget child;
  final bool centerTitle;
  final bool extendBody;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(assetPath), fit: BoxFit.cover)),
        child: Scaffold(
            extendBodyBehindAppBar: extendBody,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: elevation,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
                onPressed: Get.back,
              ),
              titleSpacing: 0,
              centerTitle: centerTitle,
              title: titleWidget,
            ),
            body: child),
      ),
    );
  }
}

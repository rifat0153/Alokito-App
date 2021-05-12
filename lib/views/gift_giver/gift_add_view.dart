import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftAddView extends StatelessWidget {
  static const route = 'giftaddview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rsz_background.png'),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}

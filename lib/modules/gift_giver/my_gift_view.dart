import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/gift/gift_controller.dart';

class MyGiftView extends StatelessWidget {
  static const route = 'mygiftview';

  GiftController giftController = Get.put(GiftController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: giftController.giftList.value.length,
          itemBuilder: (_, i) => ListTile(
            title: Text(giftController.giftList.value[i].uid.toString()),
          ),
        ),
      ),
    );
  }
}

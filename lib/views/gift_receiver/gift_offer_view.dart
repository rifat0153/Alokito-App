import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/views/map/my_map_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GiftOfferView extends StatelessWidget {
  static const route = 'giftoffer';

  GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    print('IN offer view');
    print(giftController.giftList.value.length);
    giftController.bindGiftStream();

    print(giftController.giftList.value.length);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MyMapView(),
            Container(
              color: Colors.blue,
              height: Get.size.height * 0.25,
              width: Get.size.width,
              child: Obx(
                () => ListView.builder(
                  itemCount: giftController.giftList.value.length,
                  itemBuilder: (_, i) => Card(
                    child: ListTile(
                      leading: Text(giftController.giftList.value[i].id!),
                      title: Text(giftController
                          .giftList.value[i].listingForDays
                          .toString()),
                      trailing: Text(
                          giftController.giftList.value[i].giftFor.toString()),
                    ),
                  ),
                ),
              ),
            ),
            Obx(() => Slider(
                label: giftController.searchRadius.toInt().toString(),
                divisions: 199,
                min: 1.0,
                max: 200,
                value: giftController.searchRadius,
                onChanged: (value) {
                  giftController.setSearchRadius(value);
                }))
          ],
        ),
      ),
    );
  }
}

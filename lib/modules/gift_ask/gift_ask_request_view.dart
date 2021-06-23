import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:alokito_new/modules/gift_ask/widgets/gift_ask_map_widget.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftAskRequestView extends StatelessWidget {
  GiftAskRequestView({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.black,
              ),
              onPressed: () => Get.back())
        ],
        title: Text(
          'My Request',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[200],
        shadowColor: Colors.white,
      ),

      body: Column(
        children: [
          GiftAskMapWidget(),
          Obx(
            () => Text(giftAskController.giftRequestList.value.length.toString()),
          ),
          Obx(
            () => Slider(
              value: giftAskController.searchRadius.value,
              min: 0,
              max: 200,
              divisions: 199,
              onChanged: (value) => giftAskController.searchRadius.value = value,
            ),
          ),
        ],
      ),
      // body: MyMapView(),
    );
  }
}

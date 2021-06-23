import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:alokito_new/modules/gift_ask/widgets/gift_ask_map_widget.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:alokito_new/shared/styles.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GiftAskMapWidget(),
          Obx(
            () => Text(
              '${giftAskController.giftRequestList.value.length} requests around\nyou right now',
              style: boldFontStyle.copyWith(fontSize: 25),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 2,
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: giftAskController.giftRequestList.value.length,
                itemBuilder: (_, i) => Card(
                  child: ListTile(
                    title: Text(giftAskController.giftRequestList.value[i].address),
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => Slider(
              value: giftAskController.searchRadius.value,
              label: giftAskController.searchRadius.value.toInt().toString(),
              min: 0,
              max: 200,
              divisions: 200,
              onChanged: (value) => giftAskController.searchRadius.value = value,
            ),
          ),
        ],
      ),
      // body: MyMapView(),
    );
  }
}

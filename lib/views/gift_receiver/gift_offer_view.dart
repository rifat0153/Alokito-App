import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/shared/config.dart';
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
            _SearchWidget(),
            _TextWidget(),
            Container(
              // color: Colors.blue,
              height: Get.size.height * 0.35,
              width: Get.size.width,
              child: Obx(
                () => ListView.builder(
                  itemCount: giftController.giftList.value.length,
                  itemBuilder: (_, i) =>
                      _GiftListTile(giftController: giftController, index: i),
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

class _GiftListTile extends StatelessWidget {
  _GiftListTile({Key? key, required this.giftController, required this.index})
      : super(key: key);

  final GiftController giftController;
  final int index;

  String giftType = '';

  void getGiftType() {
    switch (giftController.giftList.value[index].giftType) {
      case GiftType.anyRetailItem:
        giftType = 'Any Retail Item';
        break;
      case GiftType.packageFor3Days:
        giftType = 'Package for 3 days';
        break;
      case GiftType.packageFor7Days:
        giftType = 'Any RetaPackage for 7 days';
        break;
      case GiftType.customizedPackage:
        giftType = 'Custom Package';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    getGiftType();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: GIFT_ADD_FORM_COLOR,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            width: Get.size.width * 0.2,
            height: 70,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.network(
                giftController.giftList.value[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: GIFT_ADD_FORM_COLOR,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            height: 70,
            width: Get.size.width * 0.63,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(giftType),
                    Text('USer name'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Location'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.size.width * 0.85,
      height: Get.size.height * 0.04,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: GIFT_ADD_FORM_COLOR,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Search by location, service type etc',
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        Text('Listing by date'),
      ],
    );
  }
}

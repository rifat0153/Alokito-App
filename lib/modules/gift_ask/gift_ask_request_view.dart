import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:alokito_new/modules/gift_ask/widgets/gift_ask_map_widget.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:alokito_new/shared/config.dart';
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

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
        ),
        child: Column(
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
                  itemBuilder: (_, i) => _GiftAskRequestTile(
                    key: ValueKey(i),
                    giftAskController: giftAskController,
                    index: i,
                    width: Get.width * 0.8,
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
      ),
      // body: MyMapView(),
    );
  }
}

class _GiftAskRequestTile extends StatelessWidget {
  _GiftAskRequestTile({Key? key, required this.giftAskController, required this.index, required this.width})
      : super(key: key);

  final int index;
  final double width;
  final GiftAskController giftAskController;
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    print('Width is $width');

    return giftAskController.giftRequestList.value[index].id == authController.auth.currentUser?.uid
        ? Container()
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
              ),
              width: 300,
              height: 80,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Request For', style: whiteFontStyle.copyWith(fontWeight: FontWeight.bold)),
                        Text(
                          '0${giftAskController.giftRequestList.value[index].requestForNoOfPeople}',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Request For', style: boldFontStyle),
                          Text(
                            giftAskController.giftRequestList.value[index].address,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              Text('data'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

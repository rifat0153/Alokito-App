import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_detail_view.dart';
import 'package:alokito_new/modules/gift_ask/widgets/gift_ask_map_widget.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftAskRequestView extends StatelessWidget {
  GiftAskRequestView({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    giftAskController.bindGiftRequestStream();

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
        title: const Text(
          'Gift Request',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[200],
        shadowColor: Colors.white,
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GiftAskMapWidget(),
            Obx(
              () => Text(
                '${giftAskController.filteredGiftRequestList.value.length} requests around\nyou right now',
                style: boldFontStyle.copyWith(fontSize: 25),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                maxLines: 2,
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: giftAskController.filteredGiftRequestList.value.length,
                  itemBuilder: (_, i) => _GiftAskRequestTile(
                    key: ValueKey(i),
                    giftAskController: giftAskController,
                    index: i,
                    width: Get.width * 0.8,
                  ),
                  physics: const BouncingScrollPhysics(),
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

    return giftAskController.filteredGiftRequestList.value[index].id == authController.currentUser.value.id
        ? Container()
        : GestureDetector(
            onTap: () {
              Get.to(() => GiftAskDetailView(giftAsk: giftAskController.filteredGiftRequestList.value[index]));
            },
            child: Padding(
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
                      decoration: const BoxDecoration(
                          color: GIFT_ASK_COLOR,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Request For', style: whiteFontStyle.copyWith(fontWeight: FontWeight.bold)),
                          Text(
                            '0${giftAskController.filteredGiftRequestList.value[index].requestForNoOfPeople}',
                            style: const TextStyle(
                              color: Color(0xff11CFE7),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Any Retail Item', style: boldFontStyle.copyWith(fontSize: 16)),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    convertGiftAskType(
                                        giftAskType:
                                            giftAskController.filteredGiftRequestList.value[index].giftAskType),
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(giftAskController.filteredGiftRequestList.value[index].area,
                                    style: boldFontStyle.copyWith(fontSize: 13)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}

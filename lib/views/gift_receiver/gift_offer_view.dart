import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/views/gift_receiver/gift_details_view.dart';
import 'package:alokito_new/views/map/my_map_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        body: Stack(
          children: [
            Container(
              height: Get.size.height + 500,
              width: Get.size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/gift_offer.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  MyMapView(),
                  _SearchWidget(),
                  _TextWidget(),
                  Container(
                    // color: Colors.blue,
                    height: Get.size.height * 0.3,
                    width: Get.size.width,
                    child: Obx(
                      () => ListView.builder(
                        itemCount: giftController.giftList.value.length,
                        itemBuilder: (_, i) => _GiftListTile(
                            giftController: giftController, index: i),
                      ),
                    ),
                  ),
                  Obx(() => Slider(
                      label: giftController.searchRadius.toInt().toString(),
                      divisions: 199,
                      min: 1.0,
                      max: 200.0,
                      value: giftController.searchRadius,
                      onChanged: (value) {
                        giftController.setSearchRadius(value);
                      }))
                ],
              ),
            ),
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

  @override
  Widget build(BuildContext context) {
    return giftController.giftList.value[index].uid ==
            FirebaseAuth.instance.currentUser?.uid
        ? Container()
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: GestureDetector(
              onTap: () => Get.to(GiftDetailsView(
                  giftGiver: giftController.giftList.value[index])),
              child: Row(
                children: [
                  Obx(
                    () => Container(
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  giftController.convertGiftType(giftController
                                      .giftList.value[index].giftType),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(giftController
                                  .giftList.value[index].userName),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Location'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
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

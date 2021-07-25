import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:alokito_new/shared/config.dart';

import 'package:alokito_new/modules/gift_receiver/gift_receiver_details_view.dart';
import 'package:alokito_new/shared/widget/map_with_markers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftReceiverOfferListView extends StatelessWidget {
  static const route = 'giftoffer';

  GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    giftController.bindGiftStream();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: _buildBody(giftController: giftController),
      ),
    );
  }
}

class _buildBody extends StatelessWidget {
  const _buildBody({
    Key? key,
    required this.giftController,
  }) : super(key: key);

  final GiftController giftController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/gift_offer.png'), fit: BoxFit.fill),
          ),
        ),
        Container(
          height: Get.size.height,
          width: Get.size.width,
          child: Column(
            children: [
              Obx(
                () => MapWithMarkersWidget(
                  markers: giftController.markers,
                  initialCameraPosition:
                      CameraPosition(target: giftController.currentUserLocation.value, zoom: 9),
                ),
              ),
              _SearchWidget(),
              // _TextWidget(),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: giftController.filteredGiftList.value.length,
                    itemBuilder: (_, i) => _GiftListTile(giftController: giftController, index: i),
                  ),
                ),
              ),
              Obx(
                () => Slider(
                  label: giftController.searchRadius.toInt().toString(),
                  divisions: 199,
                  min: 1.0,
                  max: 200.0,
                  value: giftController.searchRadius,
                  onChanged: (value) {
                    giftController.setSearchRadius(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GiftListTile extends StatelessWidget {
  _GiftListTile({
    Key? key,
    required this.giftController,
    required this.index,
  }) : super(key: key);

  final GiftController giftController;
  final int index;

  String giftType = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: GestureDetector(
        onTap: () => Get.to(
          () => GiftReceiverDetailsView(giftGiver: giftController.filteredGiftList.value[index]),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: GIFT_ADD_FORM_COLOR,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    color: GIFT_ADD_FORM_COLOR,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  width: Get.width * 0.25,
                  height: Get.height * 0.1,
                  child: Hero(
                    tag: giftController.filteredGiftList.value[index].imageUrl,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.network(
                        giftController.filteredGiftList.value[index].imageUrl,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              convertGiftType(
                                  giftController.filteredGiftList.value[index].giftType),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(giftController.filteredGiftList.value[index].userName),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            giftController.filteredGiftList.value[index].area,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 30),
        Text('Listing by date'),
      ],
    );
  }
}
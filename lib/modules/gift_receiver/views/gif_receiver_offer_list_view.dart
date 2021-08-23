import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/modules/gift_receiver_details/views/gift_receiver_details_view.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/map_with_markers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftReceiverOfferListView extends StatelessWidget {
  static const route = 'giftoffer';

  final GiftController giftController = Get.find();

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
            onPressed: Get.back,
            icon: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: BuildBody(giftController: giftController),
      ),
    );
  }
}

class BuildBody extends StatelessWidget {
  BuildBody({
    Key? key,
    required this.giftController,
  }) : super(key: key);

  final GiftController giftController;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/gift_offer.png'), fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: Get.size.height,
          width: Get.size.width,
          child: Column(
            children: [
              Obx(
                () => MapWithMarkersWidget(
                  markers: giftController.markers,
                  initialCameraPosition: CameraPosition(target: authController.currentUserPosition.value, zoom: 9),
                ),
              ),
              _SearchWidget(),
              // _TextWidget(),
              Obx(
                () => giftController.filteredGiftList.value.when(
                  data: (list) {
                    print('List full CASE');

                    return Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: list.length,
                        itemBuilder: (_, i) => _GiftListTile(
                          giftController: giftController,
                          filteredGiftList: list,
                          index: i,
                        ),
                      ),
                    );
                  },
                  empty: () {
                    print('List empty CASE');
                    return Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'No Gift Nearby',
                            style: boldFontStyle.copyWith(fontSize: 20.sp),
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () => SizedBox(height: 5.h, width: double.infinity, child: const LinearProgressIndicator()),
                  error: (e) => Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(e.toString()),
                        ElevatedButton(
                          onPressed: giftController.bindGiftStream,
                          child: Text(
                            'Retry',
                            style: boldFontStyle.copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    ),
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
                  onChanged: giftController.setSearchRadius,
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
  const _GiftListTile({
    Key? key,
    required this.giftController,
    required this.filteredGiftList,
    required this.index,
  }) : super(key: key);

  final GiftController giftController;
  final List<GiftGiver> filteredGiftList;
  final int index;

  final String giftType = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: GestureDetector(
        onTap: () => Get.to(
          () => GiftReceiverDetailsView(giftGiver: filteredGiftList[index]),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: giftAddFormColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: giftAddFormColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                width: Get.width * 0.25,
                height: Get.height * 0.1,
                child: Hero(
                  tag: filteredGiftList[index].imageUrl,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.network(
                      filteredGiftList[index].imageUrl,
                      errorBuilder: (_, obj, st) {
                        return const SizedBox();
                      },
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
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
                          Text(
                            'test',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(filteredGiftList[index].user.userName),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            filteredGiftList[index].area,
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
        color: giftAddFormColor,
      ),
      child: const TextField(
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

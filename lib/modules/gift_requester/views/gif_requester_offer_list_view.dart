import '../widgets/search_widget.dart';

import '../widgets/gift_list_tile_widget.dart';

import '../../../models/gift_giver/gift.dart';
import '../../auth/controllers/auth_controller.dart';
import '../controllers/gift_requester_controller.dart';
import '../../gift_requester_details/views/gift_requester_details_view.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../../shared/widget/map_with_markers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftRequesterOfferListView extends StatelessWidget {
  static const route = 'giftoffer';

  final GiftRequesterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // BG Image
      child: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/gift_details.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: IconButton(
              onPressed: Get.back,
              icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
            ),
          ),
          extendBodyBehindAppBar: true,
          body: _BuildBody(controller: controller),
        ),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  _BuildBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GiftRequesterController controller;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Obx(
            () => MapWithMarkersWidget(
              markers: controller.markers,
              initialCameraPosition: CameraPosition(target: authController.currentUserPosition.value, zoom: 9),
            ),
          ),
          // search gift widget
          SearchWidget(),
          Obx(
            () => controller.giftList.value.when(
              data: (list) {
                print('List full CASE');
                return Expanded(
                  child: ListView.builder(
                    controller: controller.scrollController,
                    padding: EdgeInsets.zero,
                    itemCount: controller.allGiftsFetched.value
                        // * Show Loading Indicator if More gifts needs to be loaded
                        ? controller.giftList.value.maybeWhen(data: (giftList) => giftList.length, orElse: () => 0)
                        : controller.giftList.value.maybeWhen(data: (giftList) => giftList.length + 1, orElse: () => 0),
                    itemBuilder: (_, index) {
                      if (index ==
                              controller.giftList.value.maybeWhen(
                                data: (giftList) => giftList.length,
                                orElse: () => 0,
                              ) &&
                          !controller.allGiftsFetched.value) {
                        return const CupertinoActivityIndicator(radius: 15);
                      }
                      return GiftListTileWidget(
                        controller: controller,
                        giftList: list,
                        index: index,
                      );
                    },
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
                        style: boldFontStyle.copyWith(fontSize: 21.sp),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const CupertinoActivityIndicator(
                radius: 15,
              ),
              error: (e) => Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(e.toString()),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.retrieveGifts();
                      },
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
        ],
      ),
    );
  }
}

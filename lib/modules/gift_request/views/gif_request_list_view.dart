import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../shared/styles.dart';
import '../../../shared/widget/map_with_markers.dart';
import '../../auth/controllers/auth_controller.dart';
import '../controllers/gift_request_controller.dart';
import '../widgets/gift_list_tile_widget.dart';
import '../widgets/search_widget.dart';

class GiftRequestListView extends StatelessWidget {
  static const route = 'giftoffer';

  final GiftRequestController controller = Get.find();

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

  final GiftRequestController controller;
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
                        : controller.giftList.value
                            .maybeWhen(data: (giftList) => giftList.length + 1, orElse: () => 0),
                    itemBuilder: (_, index) {
                      // Conditionally Return Loading Indicator at bottom during more data load
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
                        'No Gift Found',
                        style: boldFontStyle.copyWith(fontSize: 21.sp),
                      ),
                    ],
                  ),
                );
              },
              loading: () => CupertinoActivityIndicator(
                radius: 15.sp,
              ),
              error: (e) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ],
      ),
    );
  }
}

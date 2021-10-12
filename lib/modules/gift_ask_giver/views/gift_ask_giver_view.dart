import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/my_enums.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../../shared/widget/map_with_markers.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift_ask_detail/view/gift_ask_detail_view.dart';
import '../controllers/gift_ask_giver_controller.dart';

class GiftAskGiverView extends StatelessWidget {
  GiftAskGiverView({Key? key}) : super(key: key);

  static const route = 'giftaskgiverview';

  final GiftAskGiverController giftAskGiverController = Get.find<GiftAskGiverController>();

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
            onPressed: Get.back,
          )
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
      // body: Obx(
      //   () => Center(
      //     child: Text(
      //       giftAskGiverController.giftAskList.value.when(
      //         data: (data) => data.length.toString(),
      //         empty: () => '00',
      //         error: (e) => e.toString(),
      //         loading: () => '......',
      //       ),
      //     ),
      //   ),
      // ),
      body: _BuildBody(controller: giftAskGiverController),
    );
  }
}

class _BuildBody extends StatelessWidget {
  _BuildBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GiftAskGiverController controller;
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          Obx(
            () => MapWithMarkersWidget(
              markers: controller.markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(authController.currentUserPosition.value.latitude,
                    authController.currentUserPosition.value.longitude),
                zoom: 9,
              ),
            ),
          ),
          Obx(
            () => Text(
              '${controller.giftAskList.value.maybeWhen(data: (data) => data.length, orElse: () => 0)} requests around\nyou right now',
              style: boldFontStyle.copyWith(fontSize: 25),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 2,
            ),
          ),
          Obx(
            () => controller.giftAskList.value.when(
              data: (giftAskList) => Expanded(
                child: ListView.builder(
                  controller: controller.scrollController,
                  itemCount:  controller.allGiftsFetched.value
                        // * Show Loading Indicator if More gifts needs to be loaded
                        ? controller.giftAskList.value.maybeWhen(data: (giftAskList) => giftAskList.length, orElse: () => 0)
                        : controller.giftAskList.value
                            .maybeWhen(data: (giftList) => giftList.length + 1, orElse: () => 0),
                  itemBuilder: (_, i) {
                    if (i ==
                            controller.giftAskList.value.maybeWhen(
                              data: (giftList) => giftList.length,
                              orElse: () => 0,
                            ) &&
                        !controller.allGiftsFetched.value) {
                      return const CupertinoActivityIndicator(radius: 15);
                    }
                    return _GiftAskRequestTile(
                      key: ValueKey(giftAskList[i].id),
                      giftAsk: giftAskList[i],
                      giftAskGiverController: controller,
                      width: Get.width * 0.8,
                    );
                  },
                ),
              ),
              empty: () => const SizedBox(),
              loading: () => const LinearProgressIndicator(),
              error: (error) {
                return Text(error.toString());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _GiftAskRequestTile extends StatelessWidget {
  _GiftAskRequestTile({
    Key? key,
    required this.giftAskGiverController,
    required this.giftAsk,
    required this.width,
  }) : super(key: key);

  final GiftAsk giftAsk;
  final double width;
  final GiftAskGiverController giftAskGiverController;
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => GiftAskDetailView(giftAsk: giftAsk));
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
          height: 300,
          child: Row(
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: giftAskColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Request For', style: whiteFontStyle.copyWith(fontWeight: FontWeight.bold)),
                    Text(
                      '0${giftAsk.requestForNoOfPeople}',
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
                  padding: const EdgeInsets.all(8),
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
                              convertGiftAskType(giftAskType: giftAsk.giftAskType),
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(giftAsk.area, style: boldFontStyle.copyWith(fontSize: 13)),
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

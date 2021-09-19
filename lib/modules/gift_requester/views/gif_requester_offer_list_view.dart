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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: _BuildBody(controller: controller),
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
    return Stack(
      children: [
        // Top Layer
        SizedBox(
          height: Get.size.height,
          width: Get.size.width,
          child: Column(
            children: [
              Obx(
                () => MapWithMarkersWidget(
                  markers: controller.markers,
                  initialCameraPosition: CameraPosition(target: controller.userPosition.value, zoom: 9),
                ),
              ),
              _SearchWidget(),
              Obx(
                () => controller.giftList.value.when(
                  data: (list) {
                    print('List full CASE');
                    return Expanded(
                      child: ListView.builder(
                        // itemExtent: 130,
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
                          return _GiftListTile(
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
                            style: boldFontStyle.copyWith(fontSize: 20.sp),
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
              // Obx(
              //   () => Slider(
              //     label: controller.radius.toInt().toString(),
              //     divisions: 499,
              //     min: 1,
              //     max: 500,
              //     value: controller.radius.value.toDouble(),
              //     onChanged: (val) {
              //       controller.radius.value = val.toInt();
              //     },
              //   ),
              // ),
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
    required this.controller,
    required this.giftList,
    required this.index,
  }) : super(key: key);

  final GiftRequesterController controller;
  final List<Gift> giftList;
  final int index;

  @override
  Widget build(BuildContext context) {
    final String giftType = '';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: GestureDetector(
        onTap: () => Get.to(
          () => GiftRequesterDetailsView(giftGiver: giftList[index]),
        ),
        child: Container(
          // height: 100.h,
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
                width: 100.w,
                height: 100.h,
                child: Hero(
                  tag: giftList[index].id!,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.network(
                      giftList[index].imageUrl,
                      errorBuilder: (_, obj, st) {
                        return const SizedBox();
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            giftList[index].giftDetails,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(giftList[index].user != null ? giftList[index].user!.userName : ''),
                          // Text( giftList[index].user != null?  giftList[index].user!.userName : ''),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(giftList[index].area, softWrap: true), SizedBox(width: 8.w)],
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
  final GiftRequesterController giftReceiverController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Container(
        alignment: Alignment.center,
        width: 330.w,
        height: 37.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: giftAddFormColor,
        ),
        child: TextField(
          onChanged: giftReceiverController.searchString,
          decoration: const InputDecoration(
            hintText: 'Search by location, service type etc',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
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

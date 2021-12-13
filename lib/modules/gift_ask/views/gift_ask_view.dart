import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../controllers/gift_ask_controller.dart';
import '../widgets/form_widget.dart';
import '../widgets/guidline_widget.dart';
import '../widgets/location_widget.dart';
import '../widgets/request_image_row_widget.dart';

class GiftAskView extends StatelessWidget {
  GiftAskView({Key? key}) : super(key: key);

  static const route = 'gift_ask_view';

  final GiftAskController giftAskController = Get.find<GiftAskController>()..loading.value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Gift Receiver',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final List<Widget> textWidgets = [
      Text(
        "Don't worry...",
        style: boldFontStyle.copyWith(fontSize: 24.sp),
      ),
      SizedBox(height: 8.h),
      Text('there are many people', style: boldFontStyle),
      SizedBox(height: 8.h),
      Text('around you ready to help', style: boldFontStyle),
      SizedBox(height: 8.h),
    ];

    return Stack(
      children: [
        Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/rsz_1gift_receiver.png'), fit: BoxFit.fill),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 110.h),
            ...textWidgets,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InsertLocationWidget(),
                    SizedBox(height: 8.h),
                    RequestForAndImageRow(),
                    FormWidget(key: const ValueKey('formWidget')),
                    SizedBox(height: 1.h),
                    Obx(
                      () => giftAskController.loading.value
                          ? const CircularProgressIndicator()
                          : MaterialButton(
                              onPressed: () async {
                                await giftAskController.addGift();
                              },
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                              color: giftAddFormSubmitColor,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50.w),
                                child: Text(
                                  'Place a Request',
                                  style: boldFontStyle.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                    ),
                    SizedBox(height: 8.h),
                    const GuideLines(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60.h)
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../controllers/gift_ask_controller.dart';
import 'gift_type_dropdown_widget.dart';
import 'styled_container_wdiget.dart';

class RequestDateWidget extends StatelessWidget {
  RequestDateWidget();

  final GiftAskController giftAskController = Get.find<GiftAskController>();
  var date = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Text('Request Date', style: boldFontStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              const Icon(Icons.calendar_today),
              Container(
                color: giftAddFormColor,
                height: 30,
                width: 100,
                alignment: Alignment.center,
                child: Text(date),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Text('Request For', style: boldFontStyle),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: giftAskController.decreseRequestForNoOfPeople,
                  child: StyledContainer(
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text('-', style: boldFontStyle.copyWith(fontSize: 20.sp)),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                StyledContainer(
                  widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    child: Obx(
                      () => Text(
                        giftAskController.requestForNoOfPeople.toString(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: giftAskController.increaseRequestForNoOfPeople,
                  child: StyledContainer(
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text('+', style: boldFontStyle.copyWith(fontSize: 20.sp)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
          child: Row(
            children: [
              Container(
                height: 10.h,
                width: 10.w,
                decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(width: 8.w),
              Text(
                'Any Retail Item',
                style: boldFontStyle.copyWith(fontSize: 13.sp),
              ),
              SizedBox(width: 8.w),
              StyledContainer(
                widget: GiftTypeDropdownButton(),
              )
            ],
          ),
        )
      ],
    );
  }
}
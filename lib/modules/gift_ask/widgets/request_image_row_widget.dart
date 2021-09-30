import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../shared/styles.dart';
import '../controllers/gift_ask_controller.dart';
import 'request_date_widget.dart';

class RequestForAndImageRow extends StatelessWidget {
  RequestForAndImageRow({
    Key? key,
  }) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  Future<void> _getLocalImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    final File imageFile = File(pickedFile != null ? pickedFile.path : "");

    if (imageFile.path != "") {
      giftAskController.precriptionImageFile.value = imageFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              RequestDateWidget(),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                ),
                child: Obx(
                  () => ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      giftAskController.showPrescription.value ? Colors.white : Colors.grey,
                      BlendMode.modulate,
                    ),
                    child: giftAskController.precriptionImageFile.value.path.isNotEmpty
                        ? Image.file(
                            giftAskController.precriptionImageFile.value,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            'assets/images/add_prescription.png',
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.sp),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    color: giftAskController.showPrescription.value ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(5.r)),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    giftAskController.showPrescription.value ? Colors.white : Colors.grey,
                    BlendMode.modulate,
                  ),
                  child: GestureDetector(
                    onTap: !giftAskController.showPrescription.value ? null : _getLocalImage,
                    child: Text(' Add Prescription ',
                        style: whiteFontStyle.copyWith(
                            fontSize: 10.sp, color: giftAskController.showPrescription.value ? Colors.white : Colors.grey)),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 16.h),
          ],
        )
      ],
    );
  }
}
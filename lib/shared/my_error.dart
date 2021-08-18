import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyError {
  static Future<void> showErrorBottomSheet(String errorMessage) async {
    await Get.bottomSheet(SafeArea(
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        color: Colors.white,
        child: Text(
          errorMessage,
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }
}

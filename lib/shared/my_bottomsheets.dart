import 'package:alokito_new/shared/widget/my_text.dart';
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

class MyUserNotify {
  static Future<void> showAllFetched(String message) async {
    await Get.bottomSheet(SafeArea(
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        color: Colors.white,
        child: Text(
          message,
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }

  static void showAllFetchedSnackbar(String message) {
    Get.snackbar('', '',
        duration: const Duration(milliseconds: 1000),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(24),
        titleText: const SizedBox(),
        messageText: MyText(
          message,
          textAlign: TextAlign.center,
        ));
  }
}

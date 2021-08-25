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

  static void showAllFetchedSnackbar(String message) async {
    // var snackbar = Get.snackbar(
    //   '',
    //   '',
    //   duration: const Duration(milliseconds: 1000),
    //   snackPosition: SnackPosition.BOTTOM,
    //   backgroundColor: Colors.grey.shade800,
    //   padding: EdgeInsets.all(0),
    //   margin: EdgeInsets.all(8),
    //   maxWidth: 200.w,
    //   snackStyle: SnackStyle.GROUNDED,
    //   borderRadius: 20.r,
    //   titleText: const SizedBox(),
    //   messageText: Container(
    //     alignment: Alignment.center,
    //     child: MyText(
    //       message,
    //       color: Colors.grey.shade400,
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    // );

    await Get.showSnackbar(GetBar(
      messageText: MyText(message, color: Colors.white, textAlign: TextAlign.center),
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(milliseconds: 1000),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'my_text.dart';

class MyBottomSheet {
  static Future<void> showSuccessBottomSheet(String successMessage) async {
    await Get.bottomSheet(SafeArea(
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        color: Colors.black,
        child: MyText(
          successMessage,
          textAlign: TextAlign.center,
          color: Colors.white,
        ),
      ),
    ));
  }

  static Future<void> showErrorBottomSheet(String errorMessage) async {
    await Get.bottomSheet(SafeArea(
        child: Container(
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyText(
          errorMessage,
          textAlign: TextAlign.center,
          fontSize: 28.sp,
          maxLines: 5,
        ),
      ),
    )));
  }
}

class MySnackbar {
  static Future<void> showSuccessSnackbar(String message) async {
    await Get.showSnackbar(GetBar(
      messageText: MyText(message, color: Colors.white, textAlign: TextAlign.center),
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(milliseconds: 3000),
    ));
  }

  static Future<void> showErrorSnackbar(String message) async {
    await Get.showSnackbar(GetBar(
      messageText: MyText(message, color: Colors.white, textAlign: TextAlign.center),
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(milliseconds: 3000),
    ));
  }

  static Future<void> showPermanentErrorSnackbar(String message) async {
    await Get.showSnackbar(GetBar(
      messageText: MyText(message, color: Colors.white, textAlign: TextAlign.center),
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(seconds: 10),
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

  static Future<void> showAllFetchedSnackbar(String message) async {
    await Get.showSnackbar(GetBar(
      messageText: MyText(message, color: Colors.white, textAlign: TextAlign.center),
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(milliseconds: 1000),
    ));
  }
}

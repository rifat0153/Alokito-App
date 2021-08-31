import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomSheet {
  static Future<void> showSuccessBottomSheet(String successMessage) async {
    await Get.bottomSheet(SafeArea(
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        color: Colors.green.withOpacity(0.9),
        child: Text(
          successMessage,
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }

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

class MySnackbar {
   static Future<void> showSuccessSnackbar(String message) async {
    await Get.showSnackbar(GetBar(
      messageText: MyText(message, color: Colors.white, textAlign: TextAlign.center),
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(milliseconds: 2000),
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

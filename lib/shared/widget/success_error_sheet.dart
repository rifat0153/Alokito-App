import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowSuccessOrError {
  static void showSuccessOrErrorBottomSheet(
    bool status,
    String successMessage,
    String errorMessage,
  ) async {
    if (status) {
      Get.back();

      await Get.bottomSheet(
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              successMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      );
    } else {
      await Get.bottomSheet(
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.redAccent,
      );
    }
  }
}

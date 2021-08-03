import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';

class LoginController extends GetxController {
  var firstName = 'a'.obs;
  var lastName = 'a'.obs;
  var password = '123456'.obs;
  var confirmPassword = '123456'.obs;
  var email = 'rifat0153@gmail.com'.obs;
  var userName = 'rrr'.obs;
  Rx<File> imageFile = File('').obs;
  var aggreedToTermsAndCondition = true.obs;

  void verifyRegistration() async {
    AuthController authController = Get.find();

    if (firstName.value.isEmpty) {
      Get.snackbar('Reg Error', 'First Name cant be empty', backgroundColor: Colors.red);
      return;
    }
    if (!email.value.isEmail) {
      Get.snackbar('Reg Error', 'Invalid Email', backgroundColor: Colors.red);
      return;
    }

    if (password.value.isEmpty) {
      Get.snackbar('Reg Error', 'Password can\'t be  empty', backgroundColor: Colors.red);
      return;
    }
    if (password.value != confirmPassword.value) {
      Get.snackbar('Reg Error', 'Password did not match', backgroundColor: Colors.red);
      return;
    }
    if (!aggreedToTermsAndCondition.value) {
      Get.snackbar('Reg Error', 'TERMS AND CONDITONS NEEDS TO BE AGGRED UPON', backgroundColor: Colors.red);
      return;
    }

    await authController.authService.signUp(
        firstName: firstName.value,
        lastName: lastName.value,
        email: email.value.trim(),
        password: password.value,
        userName: userName.value,
        localImageFile: imageFile.value);

    Get.find<AuthController>().authCompleted.value = true;
  }

  void verifyLogin() async {
    AuthController authController = Get.find();

    if (email.value.isEmpty) {
      Get.snackbar('Login Error', 'Email cant be empty', backgroundColor: Colors.red);
      return;
    }

    try {
      await authController.authService.signIn(
        email: email.value,
        password: password.value,
      );
      Get.find<AuthController>().authCompleted.value = true;
    } catch (e) {
      showErrorMessage(e.toString());
    }
  }

  void showErrorMessage(String message) async {
    Get.snackbar(
      'Login Error',
      message,
      duration: const Duration(milliseconds: 3000),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black,
      colorText: Colors.white,
    );
  }
}

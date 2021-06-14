import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';

class LoginController extends GetxController {
  RxBool isLogin = true.obs;

  var firstName = ''.obs;
  var lastName = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;
  var email = ''.obs;
  var userName = ''.obs;
  Rx<File> imageFile = File('').obs;
  var aggreedToTermsAndCondition = false.obs;

  void verifyRegistration() {
    AuthController authController = Get.find();

    if (firstName.value.isEmpty) {
      Get.snackbar('Reg Error', 'First Name cant be empty',
          backgroundColor: Colors.red);
      return;
    }
    if (!email.value.isEmail) {
      Get.snackbar('Reg Error', 'Invalid Email', backgroundColor: Colors.red);
      return;
    }

    if (password.value.isEmpty) {
      Get.snackbar('Reg Error', 'Password can\'t be  empty',
          backgroundColor: Colors.red);
      return;
    }
    if (password.value != confirmPassword.value) {
      Get.snackbar('Reg Error', 'Password did not match',
          backgroundColor: Colors.red);
      return;
    }
    if (!aggreedToTermsAndCondition.value) {
      Get.snackbar('Reg Error', 'TERMS AND CONDITONS NEEDS TO BE AGGRED UPON',
          backgroundColor: Colors.red);
      return;
    }

    authController.authService.value.signUp(
        firstName: firstName.value,
        lastName: lastName.value,
        email: email.value.trim(),
        password: password.value,
        userName: userName.value,
        localImageFile: imageFile.value);

    return null;
  }

  void verifyLogin() async {
    AuthController authController = Get.find();

    print(email.value);
    print(userName.value);

    print(password.value);

    if (email.value.isEmpty) {
      Get.snackbar('Login Error', 'Email cant be empty',
          backgroundColor: Colors.red);
      return;
    }

    await authController.authService.value.signIn(
      email: email.value,
      password: password.value,
    );

    return null;
  }
}

import 'dart:io';

import '../../../models/login/login.dart';
import 'auth_controller.dart';
import '../../../shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Rx<LoginStatus> loginStatus = const LoginStatus.notLoggedIn().obs;
  Rx<RegStatus> regStatus = const RegStatus.notRegistered().obs;

  RxString firstName = 'a'.obs;
  RxString lastName = 'a'.obs;
  RxString password = '123456'.obs;
  RxString confirmPassword = '123456'.obs;
  RxString email = 'rifat0153@gmail.com'.obs;
  RxString userName = 'rifat'.obs;
  Rx<File> imageFile = File('').obs;
  RxBool aggreedToTermsAndCondition = true.obs;

  Future<void> verifyRegistration() async {
    regStatus.value = const RegStatus.registering();

    final AuthController authController = Get.find();

    bool errorFound = false;

    if (firstName.value.isEmpty) {
      Get.snackbar('Reg Error', 'First Name cant be empty', backgroundColor: registrationErrorColor);
      errorFound = true;
    }
    // if (imageFile.value.path.isEmpty) {
    //   Get.snackbar('Reg Error', 'Image is needed', backgroundColor: registrationErrorColor);
    //   return;
    // }
    if (!email.value.isEmail) {
      Get.snackbar('Reg Error', 'Invalid Email', backgroundColor: registrationErrorColor);
      errorFound = true;
    }

    if (password.value.isEmpty) {
      Get.snackbar('Reg Error', "Password can't be  empty", backgroundColor: registrationErrorColor);
      errorFound = true;
    }
    if (password.value != confirmPassword.value) {
      Get.snackbar('Reg Error', 'Password did not match', backgroundColor: registrationErrorColor);
      errorFound = true;
    }
    if (!aggreedToTermsAndCondition.value) {
      Get.snackbar('Reg Error', 'TERMS AND CONDITONS NEEDS TO BE AGGRED UPON', backgroundColor: registrationErrorColor);
      errorFound = true;
    }

    if (errorFound) {
      regStatus.value = const RegStatus.notRegistered();
      return;
    }

    await authController.authService
        .signUp(firstName: firstName.value, lastName: lastName.value, email: email.value.trim(), password: password.value, userName: userName.value, localImageFile: imageFile.value);

    regStatus.value = const RegStatus.registered();

    Get.find<AuthController>().authCompleted.value = true;
  }

  Future<void> verifyInputAndLogin() async {
    final AuthController authController = Get.find();

    loginStatus.value = const LoginStatus.logginIn();

    if (email.value.isEmpty) {
      Get.snackbar('Login Error', 'Email cant be empty', backgroundColor: Colors.red);
      return;
    }

    await Future.delayed(const Duration(seconds: 1));

    try {
      await authController.authService.signIn(
        email: email.value,
        password: password.value,
      );

      loginStatus.value = const LoginStatus.loggedIn();

      Get.find<AuthController>().authCompleted.value = true;
    } catch (e) {
      loginStatus.value = LoginStatus.error(e);
      showErrorMessage(e.toString());
    }
  }

  void showErrorMessage(String message) {
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

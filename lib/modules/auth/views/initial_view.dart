import 'package:alokito_new/core/language/language_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatefulWidget {
  InitialView({Key? key}) : super(key: key);


  final LanguageController languageController = Get.find<LanguageController>();

  

  @override
  _InitialViewState createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {


  // final authController = Get.put(AuthController());

  // final loginController = Get.put(LoginController());

  // final giftAskGiverController = Get.put(GiftAskGiverController());

  // final giftAskController = Get.put(GiftAskController(), permanent: true);


  // @override
  // void initState() {
  //   Get.find<LanguageController>().setSavedLocal();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationWrapper(),
    );
  }
}

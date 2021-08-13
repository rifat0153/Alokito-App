import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/auth/controllers/login_controller.dart';
import 'package:alokito_new/modules/connection/connection_controller.dart';
import 'package:alokito_new/modules/language/language_controller.dart';
import 'package:alokito_new/modules/providers/firebase_provider.dart';
import 'package:alokito_new/modules/gift_ask/controllers/gift_ask_controller.dart';
import 'package:alokito_new/modules/gift_ask_giver/controller/gift_ask_giver_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/modules/gift_record/gift_record_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/modules/notification/notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  _InitialViewState createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  final firebaseController = Get.put(MyFirebase());
  
  final connectionController = Get.put(ConnectionController());

  final authController = Get.put(AuthController());

  final loginController = Get.put(LoginController());

  final giftRecordController = Get.put(GiftRecordController());

  final giftRequestController = Get.put(GiftReceiverController());

  final giftAskGiverController = Get.put(GiftAskGiverController());

  final notificationController = Get.put(NotificationController());

  final giftAskController = Get.put(GiftAskController(), permanent: true);

  final LanguageController languageController = Get.put(LanguageController());


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

import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/auth/login_controller.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/modules/gift_record/gift_record_controller.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatelessWidget {
  InitialView({Key? key}) : super(key: key);
  final authController = Get.put(AuthController(), permanent: true);
  final loginController = Get.put(LoginController());
  final giftRecordController = Get.put(GiftRecordController());
  final giftNotificationController = Get.put(GiftNotificationController());
  final giftRequestController = Get.put(GiftRequestController());

  final GiftAskController giftAskController = Get.put(GiftAskController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationWrapper(),
    );
  }
}

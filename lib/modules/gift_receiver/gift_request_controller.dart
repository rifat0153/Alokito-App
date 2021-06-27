import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';

class GiftRequestController extends GetxController {
  final GiftRequestService giftRequestService =
      GiftRequestService(Geoflutterfire(), FirebaseFirestore.instance, FirebaseAuth.instance);

  RxBool loading = RxBool(false);
  RxString requesterMessage = RxString('');
  RxBool showDialog = RxBool(false);
  RxBool requestExists = RxBool(false);
  // Rx<GiftReqeust> giftRequest = GiftReqeust();
}

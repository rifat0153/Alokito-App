import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftGiverNotificationController extends GetxController {
  GiftGiverNotificationController();

  RxString messageForRequester = ''.obs;
  RxString messageForGiver = ''.obs;
  RxInt requesterRating = 0.obs;
  RxInt giverRating = 0.obs;

 

  
  

  

  // Adds notification for both giver and requester
  
   
}

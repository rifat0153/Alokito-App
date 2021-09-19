import '../../../models/gift_request/gift_request.dart';
import '../../../models/my_enums.dart';
import '../../../models/notification/notification.dart';
import '../../auth/controllers/auth_controller.dart';
import '../notification_controller.dart';
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

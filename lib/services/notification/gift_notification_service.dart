import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/services/notification/base_gift_notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftNotificationService implements BaseGiftNotificationService {
  GiftNotificationService();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<bool> addGiftNotification(
      {required GiftNotification giftNotification}) async {
    try {
      var docRef = _firestore.collection('gift_notifications').doc();

      print(docRef.id + '   in doc ref');
      var object = giftNotification.copyWith(
          id: docRef.id +
              '.' +
              giftNotification.giverUid +
              '.' +
              giftNotification.requesterUid);
      await docRef.set(object.toJson());

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Stream<List<GiftNotification>> streamGiftNotification() {
    AuthController authController = Get.find();

    return _firestore
        .collection('gift_notifications')
        .where('id', isGreaterThanOrEqualTo: _auth.currentUser?.uid ?? '')
        // .orderBy('createdAt', descending: true)
        .limit(25)
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      List<GiftNotification> retVal = [];

      print(querySnapshot.docs.length.toString() + 'in service length of docs');

      querySnapshot.docs.forEach((doc) {
        retVal.add(GiftNotification.fromJson(doc.data()));
      });
      return retVal;
    });
  }
}

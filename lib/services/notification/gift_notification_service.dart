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

      await addNotificationStatus(giftNotification);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> addNotificationStatus(GiftNotification giftNotification) async {
    // Updating Notification Status for the user
    var docSnap = await _firestore
        .collection('notification_status')
        .doc(giftNotification.giverUid)
        .get();

    if (docSnap.data() == null) {
      _firestore
          .collection('notification_status')
          .doc(giftNotification.giverUid)
          .set({'totalNotification': 1});
    } else {
      _firestore
          .collection('notification_status')
          .doc(giftNotification.giverUid)
          .set({
        'totalNotification': docSnap.data()!['totalNotification'] + 1,
      });
    }
  }

  @override
  Stream<int> streamGiftNotificationStatus() {
    AuthController authController = Get.find();

    // print('IN not stream:  ' + _auth.currentUser?.uid ?? '');

    return _firestore
        .collection('notification_status')
        .doc(_auth.currentUser?.uid)
        .snapshots()
        .map((DocumentSnapshot querySnapshot) {
      var totalNotifications = 0;
      if (querySnapshot.exists) {
        totalNotifications = querySnapshot.data()!['totalNotification'] as int;
      }
      return totalNotifications;
    });
  }

  @override
  Stream<List<GiftNotification>> streamGiftNotification() {
    AuthController authController = Get.find();

    // print('IN not stream:  ' + _auth.currentUser?.uid ?? '');

    return _firestore
        .collection('gift_notifications')
        .where('notificationFor', isEqualTo: _auth.currentUser?.uid ?? '')
        .orderBy('createdAt', descending: true)
        .limit(25)
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      List<GiftNotification> retVal = [];

      print(querySnapshot.docs.length.toString() + 'in service length of docs');
      print('in service length of docs' + _auth.currentUser!.uid);

      querySnapshot.docs.forEach((doc) {
        retVal.add(GiftNotification.fromJson(doc.data()));
      });
      return retVal;
    });
  }
}

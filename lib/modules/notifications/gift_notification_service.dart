import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class BaseGiftNotificationService {
  Future<bool> addGiftNotification(
      {required GiftNotification giftNotification});

  Stream<List<GiftNotification>> streamGiftNotification();

  Future<bool> changeRequestStatus(
      {required GiftRequestStatus giftRequestStatusForGiver,
      required GiftRequestStatus giftRequestStatusForRequester,
      required GiftNotification giftNotification});

  Future<void> addNotificationStatus(GiftNotification giftNotification);

  Stream<int> streamGiftNotificationStatus();

  Future<List<GiftNotification>> getGiftNotification();
}

class GiftNotificationService implements BaseGiftNotificationService {
  GiftNotificationService();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> cancelGiftRequestNotification(
      {required GiftNotification giftNotification}) async {
    try {
      var modified = giftNotification.copyWith(
          notificationType: GiftNotificationType.packageCanceledByRequester);

      var notificationForGiver =
          modified.copyWith(notificationFor: modified.giverUid);
      var notificationForRequester =
          modified.copyWith(notificationFor: modified.requesterUid);

      await addGiftNotification(giftNotification: notificationForGiver);
      await addGiftNotification(giftNotification: notificationForRequester);

      return true;
    } on FirebaseException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
  Future<bool> changeRequestStatus(
      {required GiftRequestStatus giftRequestStatusForGiver,
      required GiftRequestStatus giftRequestStatusForRequester,
      required GiftNotification giftNotification}) async {
    try {
      var modified = giftNotification.copyWith(
          giftRequestStatus: giftRequestStatusForGiver);

      await _firestore
          .collection('gift_notifications')
          .doc(modified.id)
          .update(modified.toJson());

      var giftNotifGiver =
          giftRequestStatusForGiver == GiftRequestStatus.requestConfirmed
              ? modified.copyWith(
                  notificationType: GiftNotificationType.packageConfirmed,
                  createdAt: Timestamp.now())
              : modified.copyWith(
                  notificationType: GiftNotificationType.packageCanceledByGiver,
                  createdAt: Timestamp.now());

      var giftNotifRequester = giftNotifGiver.copyWith(
          notificationFor: giftNotifGiver.giverUid,
          giftRequestStatus: giftRequestStatusForRequester);

      await addGiftNotification(giftNotification: giftNotifGiver);
      await addGiftNotification(giftNotification: giftNotifRequester);

      return true;
    } on FirebaseException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
  Future<bool> addGiftNotification(
      {required GiftNotification giftNotification}) async {
    try {
      var docRef = _firestore.collection('gift_notifications').doc();

      print(docRef.id + '   in doc ref');
      var object = giftNotification.copyWith(id: docRef.id);
      await docRef.set(object.toJson());

      await addNotificationStatus(giftNotification);

      return true;
    } on FirebaseException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
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

  Future<void> resetNotificationStatus() async {
    await _firestore
        .collection('notification_status')
        .doc(_auth.currentUser?.uid)
        .set({'totalNotification': 0});
  }

  @override
  Stream<int> streamGiftNotificationStatus() {
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
  Future<List<GiftNotification>> getGiftNotification() async {
    return _firestore
        .collection('gift_notifications')
        .where('notificationFor', isEqualTo: _auth.currentUser?.uid ?? '')
        .orderBy('createdAt', descending: true)
        .limit(25)
        .get()
        .then((docList) {
      List<GiftNotification> retVal = [];

      docList.docs.forEach((doc) {
        retVal.add(GiftNotification.fromJson(doc.data()));
      });

      return retVal;
    });
  }

  @override
  Stream<List<GiftNotification>> streamGiftNotification() {
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

import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/modules/gift_record/gift_record_controller.dart';
import 'package:alokito_new/modules/notifications/notif_error.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class BaseGiftNotificationService {
  Future<bool> addGiftNotification(
      {required GiftNotification giftNotification});

  Stream<List<GiftNotification>> streamGiftNotification();

  Future<bool> cancelGiftRequestNotification(
      {required GiftNotification giftNotification});

  Future<bool> giftRequestDoneNotif(
      {required GiftNotification giftNotification});

  Future<bool> changeRequestStatus({
    required GiftRequestStatus giftRequestStatusForGiver,
    required GiftRequestStatus giftRequestStatusForRequester,
    required GiftNotificationType giftNotificationTypeForGiver,
    required GiftNotificationType giftNotificationTypeForRequester,
    required GiftRequestStatus giftRequestStatus,
    required GiftNotification giftNotification,
  });

  Future<void> addNotificationStatus(GiftNotification giftNotification);

  Future<void> updateUserInfo({
    required String userId,
    required bool giftReceiver,
    required double rating,
  });

  Stream<int> streamGiftNotificationStatus();

  Future<List<GiftNotification>> getGiftNotification();
}

class GiftNotificationService implements BaseGiftNotificationService {
  GiftNotificationService();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> updateUserInfo({
    required String userId,
    required bool giftReceiver,
    required double rating,
  }) async {
    try {
      var userDocRef = _firestore.collection('users').doc(userId);
      var userDoc = await userDocRef.get();
      LocalUser localUser = LocalUser.fromJson(userDoc.data()!);
      double avgRating =
          (localUser.ratingSum + rating) / localUser.totalRating == 0
              ? 1
              : localUser.totalRating + 1;

      var updatedUser = localUser.copyWith(
        averageRating: avgRating,
        totalRating: localUser.totalRating + 1,
        ratingSum: localUser.ratingSum + rating,
      );

      if (giftReceiver) {
        await userDocRef.set(updatedUser
            .copyWith(giftOffered: localUser.giftReceived + 1)
            .toJson());
      } else {
        await userDocRef.set(updatedUser
            .copyWith(giftReceived: localUser.giftOffered + 1)
            .toJson());
      }
    } on FirebaseException catch (e) {
      throw NotificationError(message: e.message);
    }
  }

  @override
  Future<bool> giftRequestDoneNotif(
      {required GiftNotification giftNotification}) async {
    GiftRecordController giftRecordController = Get.find();
    GiftRequestController giftRequestController = Get.find();

    try {
      var notifForGiver = giftNotification.copyWith(
        notificationFor: giftNotification.giverUid,
        notificationType: GiftNotificationType.packageDelivered,
        createdAt: Timestamp.now(),
      );
      var notifForRequester = giftNotification.copyWith(
        notificationFor: giftNotification.requesterUid,
        notificationType: GiftNotificationType.packageDelivered,
        createdAt: Timestamp.now(),
      );

      //update existing notification
      await _firestore
          .collection('gift_notifications')
          .doc(giftNotification.id)
          .update(giftNotification
              .copyWith(notificationType: GiftNotificationType.packageDelivered)
              .toJson());

      //add new notifications for both receiver and giver
      await _firestore
          .collection('gift_notifications')
          .add(notifForRequester.toJson());
      await _firestore
          .collection('gift_notifications')
          .add(notifForGiver.toJson());

      //add a record of the gift transaction
      await giftRecordController.addGiftRecord(
        giftNotification: giftNotification,
      );

      //updating request status so new request can not be made
      await giftRequestController.updateGiftRequestToComplete(
        requesterId: giftNotification.requesterUid,
        giftId: giftNotification.giftId,
      );

      return true;
    } on FirebaseException catch (e) {
      throw NotificationError(message: e.message);
    }
  }

  @override
  Future<bool> cancelGiftRequestNotification(
      {required GiftNotification giftNotification}) async {
    try {
      // var modified = giftNotification.copyWith(
      //     notificationType: GiftNotificationType.packageCanceledByRequester);

      // var notificationForGiver =
      //     modified.copyWith(notificationFor: modified.giverUid);
      // var notificationForRequester =
      //     modified.copyWith(notificationFor: modified.requesterUid);

      // await addGiftNotification(giftNotification: notificationForGiver);
      // await addGiftNotification(giftNotification: notificationForRequester);

      return true;
    } on FirebaseException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
  Future<bool> changeRequestStatus({
    required GiftRequestStatus giftRequestStatusForGiver,
    required GiftRequestStatus giftRequestStatusForRequester,
    required GiftNotificationType giftNotificationTypeForGiver,
    required GiftNotificationType giftNotificationTypeForRequester,
    required GiftRequestStatus giftRequestStatus,
    required GiftNotification giftNotification,
  }) async {
    try {
      var modified =
          giftNotification.copyWith(giftRequestStatus: giftRequestStatus);

      await _firestore
          .collection('gift_notifications')
          .doc(modified.id)
          .update(modified.toJson());

      var giftNotifGiver = giftNotification.copyWith(
        notificationType: giftNotificationTypeForGiver,
        giftRequestStatus: giftRequestStatusForGiver,
        notificationFor: giftNotification.giverUid,
        createdAt: Timestamp.now(),
      );

      var giftNotifRequester = giftNotifGiver.copyWith(
        notificationType: giftNotificationTypeForRequester,
        giftRequestStatus: giftRequestStatusForRequester,
        notificationFor: giftNotification.requesterUid,
        createdAt: Timestamp.now(),
      );

      var notifList = await _firestore
          .collection('gift_notifications')
          .where('giftId', isEqualTo: giftNotification.giftId)
          .where('requesterUid', isEqualTo: giftNotification.requesterUid)
          .get();

      var idList = notifList.docs
          .map((doc) => GiftNotification.fromJson(doc.data()))
          .toList();

      var filteredList = idList.where((element) =>
          element.notificationType == GiftNotificationType.packageConfirmed);

      idList.forEach((element) {
        print('Notif LIST ID: ' + element.id.toString());

        _firestore.collection('gift_notifications').doc(element.id).delete();
      });

      filteredList.forEach((element) {
        print('Filtered notif LIST ID: ' + element.id.toString());
      });

      await addGiftNotification(giftNotification: giftNotifGiver);
      await addGiftNotification(giftNotification: giftNotifRequester);

      Get.back();

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

      print('in notif stream service length of docs' +
          querySnapshot.docs.length.toString());
      // print('in service length of docs' + _auth.currentUser!.uid);

      querySnapshot.docs.forEach((doc) {
        retVal.add(GiftNotification.fromJson(doc.data()));
      });
      return retVal;
    });
  }
}

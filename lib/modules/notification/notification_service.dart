import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/notification/notification_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseNotificationService {
  Future<bool> add({required MyNotification notification, required String userId});

  Stream<List<MyNotification>> streamAllNotifications({required String userId});
}

class NotificationService extends BaseNotificationService {
  NotificationService(this._firestore, this._auth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  @override
  Future<bool> add({required MyNotification notification, required String userId}) async {
    try {
      await _firestore.collection('users').doc(userId).collection('notifications').add(notification.toJson());
      return true;
    } on FirebaseException catch (e) {
      throw NotificationException(message: e.message);
    }
  }

  @override
  Stream<List<MyNotification>> streamAllNotifications({required String userId}) {
    var stream = _firestore
        .collection('users')
        .doc(userId)
        .collection('notifications')
        .orderBy('createdAt')
        .limit(20)
        .snapshots()
        .map((docList) {
      List<MyNotification> list = [];
      docList.docs.forEach((doc) {
        MyNotification notification = MyNotification.fromJson(doc.data());

        list.add(notification);
      });
      return list;
    });

    return stream;
  }
}
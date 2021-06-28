import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/notification/notification_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseNotificationService {
  Future<bool> add({required Notification notification, required String userId});

  Future<List<Notification>> getAll({required String userId});
}

class NotificationService extends BaseNotificationService {
  NotificationService(this._firestore, this._auth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  @override
  Future<bool> add({required Notification notification, required String userId}) async {
    try {
      await _firestore.collection('users').doc(userId).collection('notifications').add(notification.toJson());
      return true;
    } on FirebaseException catch (e) {
      throw NotificationException(message: e.message);
    }
  }

  @override
  Future<List<Notification>> getAll({required String userId}) {
    // TODO: implement getAll
    throw UnimplementedError();
  }
}

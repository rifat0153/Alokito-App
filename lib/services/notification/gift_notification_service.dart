import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/services/notification/base_gift_notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GiftNotificationService implements BaseGiftNotificationService {
  GiftNotificationService();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<bool> addGiftNotification(
      {required GiftNotification giftNotification}) async {
    try {
      var docRef = _firestore.collection('gift_notifications').doc();

      giftNotification.copyWith(id: docRef.id);
      await docRef.set(giftNotification.toJson());

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}

import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_record/gift_record.dart';
import 'package:alokito_new/modules/gift_record/gift_record_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseGiftRecordService {
  Future<void> addGiftRecord({required GiftReqeust giftReqeust});
}

class GiftRecordService implements BaseGiftRecordService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> addGiftRecord({required GiftReqeust giftReqeust}) async {
    try {
      var docRef = _firestore.collection('gift_records').doc();

      GiftRecord giftRecord = GiftRecord(
        id: docRef.id,
        giftReqeust: giftReqeust,
        createdAt: Timestamp.now(),
      );

      await docRef.set(giftRecord.toJson());

      return;
    } on FirebaseException catch (e) {
      throw GiftRecordException(message: e.message);
    }
  }
}

import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseGiftAskGiverService {
  Future<void> add(GiftAskGiver giftAskGiver);

  Future<GiftAskGiver?> getGiftAskRequest({required String id});
}

class GiftAskGiverService implements BaseGiftAskGiverService {
  GiftAskGiverService(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<void> add(GiftAskGiver giftAskGiver) async {
    await _firestore.collection('gift_ask_giver').doc(giftAskGiver.id).set(giftAskGiver.toJson());
  }

  @override
  Future<GiftAskGiver?> getGiftAskRequest({required String id}) async {
    var doc = await _firestore.collection('gift_ask_giver').doc(id).get();
    
    return doc.exists ? GiftAskGiver.fromJson(doc.data()!) : null;
  }
}

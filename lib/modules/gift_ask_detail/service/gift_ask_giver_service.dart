import '../../../models/gift_ask/gift_ask_giver.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseGiftAskDetailService {
  Future<void> add(GiftAskGiver giftAskGiver);

 
}


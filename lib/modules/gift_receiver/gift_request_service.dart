import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

abstract class BaseGiftReceiverService {
  Future<bool> findGift({required GiftGiver giftGiver});

  Future<bool> increaseNoOfTimesGiftRequested({required GiftGiver giftGiver});

  Future<bool> deleteGiftRequest({required GiftReceiver giftReqeust});

  Future<bool> addGiftRequest({required GiftReceiver giftReceiver});

  Future<GiftReceiver> getGiftRequest({required GiftReceiver giftReqeust});

  Future<bool> changeRequestStatus({required GiftReceiver giftReqeust});
}

class GiftReceiverService implements BaseGiftReceiverService {
  GiftReceiverService(this.geo, this._firestore, this._auth);

  final Geoflutterfire geo;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  @override
  Future<bool> addGiftRequest({required GiftReceiver giftReceiver}) async {
    try {
      await _firestore.collection('gift_receiver').add(giftReceiver.toJson());
      return true;
    } on FirebaseException catch (e) {
      return false;
    }
  }

  @override
  Future<bool> changeRequestStatus({required GiftReceiver giftReqeust}) {
    // TODO: implement changeRequestStatus
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteGiftRequest({required GiftReceiver giftReqeust}) {
    // TODO: implement deleteGiftRequest
    throw UnimplementedError();
  }

  @override
  Future<bool> findGift({required GiftGiver giftGiver}) {
    // TODO: implement findGift
    throw UnimplementedError();
  }

  @override
  Future<GiftReceiver> getGiftRequest({required GiftReceiver giftReqeust}) {
    // TODO: implement getGiftRequest
    throw UnimplementedError();
  }

  @override
  Future<bool> increaseNoOfTimesGiftRequested({required GiftGiver giftGiver}) {
    // TODO: implement increaseNoOfTimesGiftRequested
    throw UnimplementedError();
  }
}

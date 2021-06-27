import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

abstract class BaseGiftRequestService {
  Future<bool> findGift({required GiftGiver giftGiver});

  Future<bool> increaseNoOfTimesGiftRequested({required GiftGiver giftGiver});

  Future<bool> deleteGiftRequest({required GiftReqeust giftReqeust});

  Future<bool> addGiftRequest({required GiftReqeust giftReqeust});

  Future<GiftReqeust> getGiftRequest({required GiftReqeust giftReqeust});

  Future<bool> changeRequestStatus({required GiftReqeust giftReqeust});
}

class GiftRequestService implements BaseGiftRequestService {
  GiftRequestService(this.geo, this._firestore, this._auth);

  final Geoflutterfire geo;
  final _firestore;
  final _auth;

  @override
  Future<bool> addGiftRequest({required GiftReqeust giftReqeust}) {
    // TODO: implement addGiftRequest
    throw UnimplementedError();
  }

  @override
  Future<bool> changeRequestStatus({required GiftReqeust giftReqeust}) {
    // TODO: implement changeRequestStatus
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteGiftRequest({required GiftReqeust giftReqeust}) {
    // TODO: implement deleteGiftRequest
    throw UnimplementedError();
  }

  @override
  Future<bool> findGift({required GiftGiver giftGiver}) {
    // TODO: implement findGift
    throw UnimplementedError();
  }

  @override
  Future<GiftReqeust> getGiftRequest({required GiftReqeust giftReqeust}) {
    // TODO: implement getGiftRequest
    throw UnimplementedError();
  }

  @override
  Future<bool> increaseNoOfTimesGiftRequested({required GiftGiver giftGiver}) {
    // TODO: implement increaseNoOfTimesGiftRequested
    throw UnimplementedError();
  }
}

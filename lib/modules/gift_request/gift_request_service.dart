import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_request/gift_request_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

abstract class BaseGiftRequestService {
  Future<bool> findGift({required GiftGiver giftGiver});

  Future<bool> increaseNoOfTimesGiftRequested({required GiftGiver giftGiver});

  Future<bool> deleteGiftRequest({required GiftGiver giftGiver});

  Future<bool> addGiftRequest({required GiftGiver giftGiver});

  Future<GiftReqeust> getGiftRequest({required String id});

  Future<void> updateGiftRequestStatus(
      {required String id, required GiftRequestStatus giftRequestStatus});

  Future<bool> changeRequestStatus(
      {required GiftRequestStatus giftRequestStatus,
      required GiftNotification giftNotification});
}

class GiftRequestService implements BaseGiftRequestService {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Future<void> updateGiftRequestStatus(
      {required String id,
      required GiftRequestStatus giftRequestStatus}) async {
    await _firestore
        .collection('gift_requests')
        .doc(id)
        .update({'giftRequestStatus': giftRequestStatus});
  }

  @override
  Future<GiftReqeust> getGiftRequest({required String id}) async {
    var snap = await _firestore.collection('gift_requests').doc(id).get();
    var giftRequest = GiftReqeust.fromJson(snap.data() ?? {});

    // print('In gift request service: ' + giftRequest.toString());

    return giftRequest;
  }

  @override
  Future<bool> changeRequestStatus(
      {required GiftRequestStatus giftRequestStatus,
      required GiftNotification giftNotification}) async {
    try {
      var docId = '${giftNotification.requesterUid}.${giftNotification.giftId}';
      var doc = await _firestore.collection('gift_requests').doc(docId).get();

      if (doc.exists) {
        GiftReqeust giftReqeust = GiftReqeust.fromJson(doc.data() ?? {});

        GiftReqeust giftReqeust1 = giftReqeust.maybeMap(
            (value) => value.copyWith(giftRequestStatus: giftRequestStatus),
            orElse: () => giftReqeust);

        await _firestore
            .collection('gift_requests')
            .doc(docId)
            .update(giftReqeust1.toJson());
      } else {
        print('request doc does not exists');
        return false;
      }

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> increaseNoOfTimesGiftRequested(
      {required GiftGiver giftGiver}) async {
    var currentUserUid = _auth.currentUser?.uid;
    var docRef = _firestore
        .collection('gift_requested_data')
        .doc('${currentUserUid}.${giftGiver.id}');

    try {
      var doc = await docRef.get();

      if (doc.data() == null) {
        await docRef.set({'requestedNoOfTimes': 1});
        return true;
      }

      int requested = doc.data()!['requestedNoOfTimes'] as int;

      if (requested > 20) {
        return false;
      }

      await docRef.set({'requestedNoOfTimes': requested + 1});

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> deleteGiftRequest({required GiftGiver giftGiver}) async {
    var currentUserUid = _auth.currentUser?.uid;

    try {
      var result = await _firestore
          .collection('gift_requests')
          .doc('${currentUserUid}.${giftGiver.id}')
          .delete();

      print('Service: delete gift request');

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> findGift({required GiftGiver giftGiver}) async {
    var currentUserUid = _auth.currentUser?.uid;

    try {
      var result = await _firestore
          .collection('gift_requests')
          .doc('${currentUserUid}.${giftGiver.id}')
          .get();

      print('IN finding gift');
      print(result.data());

      if (result.data() == null) {
        return false;
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> addGiftRequest({required GiftGiver giftGiver}) async {
    print('in add gift request');
    AuthController authController = Get.find();
    GiftRequestController giftRequestController = Get.find();

    var currentPos = await Location().getLocation();

    var myLocation = geo.point(
        latitude: currentPos.latitude ?? 23.7590,
        longitude: currentPos.longitude ?? 90.4119);
    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition myPosition = MyPosition(
        geohash: pos['geohash'] as String,
        geopoint: pos['geopoint'] as GeoPoint);
    var currentUserUid = _auth.currentUser?.uid;

    try {
      var docRef = _firestore
          .collection('gift_requests')
          .doc('${currentUserUid}.${giftGiver.id}');

      GiftReqeust giftReqeust = GiftReqeust(
          id: '${currentUserUid}.${giftGiver.id}',
          giftRequestStatus: GiftRequestStatus.requestPedning,
          giftArea: giftGiver.area,
          giftPosition: giftGiver.position,
          giftOfferedByRequester: authController.currentUserGiftOffered.value,
          giftReceivedByRequester: authController.currentUserGiftReceived.value,
          requesterAvgRating: authController.currentUserRating.value,
          requesterRatingSum: authController.currentUserRatingSum.value,
          requesterTotRating: authController.currentUserTotalRating.value,
          giftFor: giftGiver.giftFor,
          giftId: giftGiver.id!,
          giverUid: giftGiver.uid,
          requesterMessage: giftRequestController.requesterMessage.value,
          requesterUid: _auth.currentUser!.uid,
          giftType: giftGiver.giftType,
          giftImageUrl: giftGiver.imageUrl,
          giftDetails: giftGiver.giftDetails,
          requesterPosition: myPosition,
          requesterName: authController.currentUserName.value,
          giftGiverImageUrl: giftGiver.userImageUrl,
          requesterImageUrl: authController.currentUserImageUrl.value,
          createdAt: Timestamp.now());

      await docRef.set(giftReqeust.toJson());
      // print(giftReqeust);

      return true;
    } catch (e) {
      // print(e);
      return false;
    }
  }
}

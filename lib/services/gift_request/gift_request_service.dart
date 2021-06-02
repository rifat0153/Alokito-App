import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/controller/gift/gift_request_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/services/gift_request/base_gift_request_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class GiftRequestService implements BaseGiftRequestService {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Future<bool> changeRequestStatus(
      {required bool decision,
      required GiftNotification giftNotification}) async {
    try {
      var docId = '${giftNotification.requesterUid}.${giftNotification.giftId}';
      var doc = await _firestore.collection('gift_requests').doc(docId).get();

      if (doc.exists) {
        GiftReqeust giftReqeust = GiftReqeust.fromJson(doc.data() ?? {});

        GiftReqeust giftReqeust1 = giftReqeust.maybeMap(
            (value) => value.copyWith(requestConfirmed: true),
            orElse: () => giftReqeust);

        await _firestore
            .collection('gift_requests')
            .doc(docId)
            .update(giftReqeust1.toJson());
      } else {
        print('request doc does not exitswt');
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
          giftArea: giftGiver.area,
          giftOfferedByRequester: authController.currentUserGiftOffered.value,
          giftReceivedByRequester: authController.currentUserGiftReceived.value,
          requesterAvgRating: authController.currentUserRating.value,
          requesterRatingSum: authController.currentUserRatingSum.value,
          requesterTotRating: authController.currentUserTotalRating.value,
          giftFor: giftGiver.giftFor,
          requestConfirmed: false,
          requestDenied: false,
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

import 'dart:math';

import 'package:alokito_new/models/geo.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/base_gift_giver_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import '../../models/gift_giver/my_position.dart';

class GiftGiverService implements BaseGiftGiverService {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Future<void> addPosition() async {
    var myLocation = geo.point(latitude: 23.7590, longitude: 90.4119);

    var docRef = _firestore.collection('positions').doc();

    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition myPosition = MyPosition(
        geohash: pos['geohash'] as String,
        geopoint: pos['geopoint'] as GeoPoint);

    await docRef.set(myPosition.toJson());

    print('Position added');
  }

  @override
  Future<void> addGift({required double lat, required double lng}) async {
    var myLocation = geo.point(latitude: lat, longitude: lng);
    // GeoFirePoint center = geo.point(latitude: 23.7590, longitude: 90.4119);
    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition myPosition = MyPosition(
        geohash: pos['geohash'] as String,
        geopoint: pos['geopoint'] as GeoPoint);

    var docRef = _firestore.collection('gifts').doc();

    var gift = GiftGiver(
      uid: _auth.currentUser!.uid,
      imageUrl: 'imageUrl',
      giftDetails: 'giftDetails',
      listingDate: 'listingDate',
      listingFor: 5,
      pickUpTime: Timestamp.now(),
      canLeaveOutside: false,
      position: myPosition,
      // position: MyPosition.fromJson(myLocation.data as Map<String, dynamic>),
    );

    print(gift.toJson());
    await docRef.set(gift.toJson());
    print('Added gift');
  }
}

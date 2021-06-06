import 'dart:convert';
import 'dart:math';

import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/models/geo.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/modules/gift_giver/base_gift_giver_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path/path.dart';
import 'package:uuid/uuid.dart';
import '../../models/gift_giver/my_position.dart';
import 'package:http/http.dart' as http;

class GiftGiverService implements BaseGiftGiverService {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Future<String> getAddressFromLatLng(
      {required double lat, required double lng}) async {
    print('Inside GMAP service');
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY';
    final uri = Uri.parse(url);

    final response = await http.get(uri);

    var place =
        json.decode(response.body)['results'][0]['formateed_address'] as String;

    print('in service place:  ' + place);
    return place;
  }

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
  Future<void> addGift() async {
    GiftAddFormController controller = Get.find();
    controller.isUploading.value = true;

    LatLng giftPosition = controller.markers.first.position;
    var myLocation = geo.point(
        latitude: giftPosition.latitude, longitude: giftPosition.longitude);
    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition myPosition = MyPosition(
        geohash: pos['geohash'] as String,
        geopoint: pos['geopoint'] as GeoPoint);
    //  same thing as above
    //  MyPosition myPosition = MyPosition.fromJson(pos as Map<String, dynamic>);

    print('Uploading Image');

    var fileExtension = path.extension(controller.imageFile.value.path);
    print('FileExtension: ' + fileExtension);

    var uuid = const Uuid().v4();

    var firebaseStorageRef = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('gifts/images/$uuid$fileExtension');

    try {
      await firebaseStorageRef.putFile(controller.imageFile.value);
    } on firebase_core.FirebaseException catch (e) {
      print('User ImageFile Upload Error: ' + e.message!);
    }

    String url = await firebaseStorageRef.getDownloadURL();

    var docRef = _firestore.collection('gifts').doc();

    print('doc id:  ' + docRef.id);

    AuthController authController = Get.find();

    var userDoc =
        await _firestore.collection('users').doc(_auth.currentUser!.uid).get();

    var name =
        userDoc.data() == null ? '' : userDoc.data()!['userName'] as String;
    var giverImageUrl =
        userDoc.data() == null ? '' : userDoc.data()!['imageUrl'] as String;
    int giverRating =
        userDoc.data() == null ? 1 : userDoc.data()!['reviewInStar'] as int;
    MyPosition userPosition = MyPosition.fromJson(
        userDoc.data()!['position'] as Map<String, dynamic>);
    Timestamp userCreatedAt = userDoc.data()!['createdAt'] as Timestamp;
    String userFullName = (userDoc.data()!['firstName'] as String) +
        (userDoc.data()!['lastName'] as String);

    var gift = GiftGiver(
      id: docRef.id,
      userName: name,
      userFullName: userFullName,
      userImageUrl: giverImageUrl,
      userAvgRating: authController.currentUserRating.value,
      userTotRating: authController.currentUserTotalRating.value,
      userRatingSum: authController.currentUserRatingSum.value,
      userPosition: userPosition,
      area: controller.area.value,
      location: controller.location.value,
      giftFor: controller.giftFor.value,
      distance: controller.distance.value,
      giftType: controller.giftType.value,
      uid: _auth.currentUser!.uid,
      imageUrl: url,
      givingGiftInDays: controller.givingGiftInDays.value,
      giftDetails: controller.giftDetails.value,
      listingDate: Timestamp.now(),
      listingForDays: controller.listingFor.value.toInt(),
      pickUpTime: controller.pickUpTime.value ?? Timestamp.now(),
      canLeaveOutside: controller.canLeaveOutside.value,
      position: myPosition,
      userCreatedAt: userCreatedAt,
      createdAt: Timestamp.now(),
    );

    print(gift.toJson());
    await docRef.set(gift.toJson());
    print('Added gift');
    controller.isUploading.value = false;
  }

  @override
  Stream<List<GiftGiver>> giftStreamByLocation() {
    GiftController giftController = Get.find();

// Create a geoFirePoint
    GeoFirePoint center = geo.point(
        latitude: giftController.currentUserLocation.value.latitude,
        longitude: giftController.currentUserLocation.value.longitude);
    print('In Service: center is: ' + center.toString());

    var collectionReference = _firestore.collection('gifts');
    // .where('uid', isNotEqualTo: _auth.currentUser?.uid);
    var stream = geo
        .collection(collectionRef: collectionReference)
        .within(
            center: center,
            radius: giftController.searchRadius,
            field: 'position',
            strictMode: true)
        .map((event) => event.map(
              (e) {
                var gift = GiftGiver.fromJson(e.data() ?? {});
                return gift;
              },
            ).toList());

    return stream;
  }

  @override
  Stream<List<GiftGiver>> giftStream() {
    GiftController giftController = Get.find();
    GeoFirePoint center = geo.point(
        latitude: giftController.currentUserLocation.value.latitude,
        longitude: giftController.currentUserLocation.value.longitude);

    var collectionReference = _firestore.collection('gifts');
    // .where('uid', isNotEqualTo: _auth.currentUser?.uid);

    List<GiftGiver> list = [];
    geo
        .collection(collectionRef: collectionReference)
        .within(
            center: center,
            radius: giftController.searchRadius,
            field: 'position',
            strictMode: true)
        .forEach((element) {
      element.forEach((doc) {
        list = [...list, GiftGiver.fromJson(doc.data() ?? {})];
      });
    });

    print(list);

    return Stream.value(list);
  }
}

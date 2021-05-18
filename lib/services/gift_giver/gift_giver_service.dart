import 'dart:math';

import 'package:alokito_new/controller/gift/gift_add_form_controller.dart';
import 'package:alokito_new/models/geo.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/base_gift_giver_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path/path.dart';
import 'package:uuid/uuid.dart';
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

    var gift = GiftGiver(
      id: docRef.id,
      giftFor: controller.giftFor.value,
      distance: controller.distance.value,
      giftType: controller.giftType.value,
      uid: _auth.currentUser!.uid,
      imageUrl: url,
      giftDetails: controller.giftDetails.value,
      listingDate: FieldValue.serverTimestamp().toString(),
      listingFor: controller.listingFor.value.toInt(),
      pickUpTime: Timestamp.now(),
      canLeaveOutside: controller.canLeaveOutside.value,
      position: myPosition,
    );

    print(gift.toJson());
    await docRef.set(gift.toJson());
    print('Added gift');
    controller.isUploading.value = false;
  }

  @override
  Stream<List<GiftGiver>> giftStream() {
    print('In stream');
    List<GiftGiver> retVal = [];
    return _firestore
        .collection('gifts')
        // .where('listingFor', isEqualTo: 3)
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      retVal = [];
      querySnapshot.docs.forEach((doc) {
        retVal.add(GiftGiver.fromJson(doc.data()));
      });

      print('IN service:   ' + retVal.length.toString());
      return retVal;
    });
  }
}

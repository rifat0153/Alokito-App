import 'dart:convert';

import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_exception.dart';
import 'package:alokito_new/modules/gift_giver/widgets/gift_error.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

abstract class BaseGiftGiverService {
  // Future<void> addGift();

  Future<GiftGiverListUnion> getGiftDB(String page, String limit, LatLng latLng, double radius);

  Stream<GiftGiverListUnion> giftStreamByLocation();

  Future<bool> updateGiftGiver({required String giftId, required GiftReceiver giftReceiver});
}

class GiftGiverService implements BaseGiftGiverService {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Future<GiftGiverListUnion> getGiftDB(String page, String limit, LatLng latLng, double radius) async {
    final client = http.Client();

    final http.Response response = await client.get(
      Uri.parse('http://192.168.0.121:3000/api/v1/gift/near?lat=23&lng=91&maxDistance=104&page=1&limit=5'),
      headers: {"Content-Type": "application/json"},
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    final List<dynamic> giftJson = body['gifts'] as List<dynamic>;

    final List<GiftGiver> gifts = giftJson
        .map(
          (user) => GiftGiver.fromJson(giftJson as Map<String, dynamic>),
        )
        .toList();

    gifts.forEach((element) {
      print(element);
    });

    return GiftGiverListUnion.data(gifts);
  }

  // * Http get
  // final http.Response response = await client.get(
  //   Uri.parse(
  //       'http://192.168.0.121:3000/api/v1/user/near?lat=${userPosition.latitude}&lng=${userPosition.longitude}&maxDistance=125&page=1&limit=15'),
  //   headers: {"Content-Type": "application/json"},
  // );

  // final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

  // final List<dynamic> userBody = body['users'] as List<dynamic>;

  // final List<LocalUser> users = userBody
  //     .map(
  //       (user) => LocalUser.fromJson(user as Map<String, dynamic>),
  //     )
  //     .toList();

  // users.forEach((element) {
  //   print(element.id);
  // });

  @override
  Future<bool> updateGiftGiver({required String giftId, required GiftReceiver giftReceiver}) async {
    try {
      await _firestore.collection('gifts').doc(giftId).update(giftReceiver.toJson());

      return true;
    } on FirebaseException catch (e) {
      throw GiftError(e);
    }
  }

  // @override
  // Future<void> addGift() async {
  //   final GiftAddFormController controller = Get.find();
  //   controller.isUploading.value = true;

  //   final LatLng giftPosition = controller.markers.first.position;
  //   final myLocation = geo.point(latitude: giftPosition.latitude, longitude: giftPosition.longitude);
  //   final pos = myLocation.data as Map<dynamic, dynamic>;

  //   final MyPosition myPosition = MyPosition(geohash: pos['geohash'] as String, geopoint: pos['geopoint'] as GeoPoint);

  //   final fileExtension = path.extension(controller.imageFile.value.path);
  //   final uuid = const Uuid().v4();
  //   final uid = _auth.currentUser != null ? _auth.currentUser?.uid : throw Exception('no uid found');

  //   final firebaseStorageRef =
  //       firebase_storage.FirebaseStorage.instance.ref().child('$uid/gifts/images/$uuid$fileExtension');

  //   try {
  //     await firebaseStorageRef.putFile(controller.imageFile.value);
  //   } on FirebaseException catch (e) {
  //     throw Exception(e.toString());
  //   }

  //   final String url = await firebaseStorageRef.getDownloadURL();

  //   final docRef = _firestore.collection('gifts').doc();
  //   final AuthController authController = Get.find();

  //   final userDoc = await _firestore.collection('users').doc(_auth.currentUser!.uid).get();

  //   final name = userDoc.data() == null ? '' : userDoc.data()!['userName'] as String;
  //   final giverImageUrl = userDoc.data() == null ? '' : userDoc.data()!['imageUrl'] as String;
  //   final MyPosition userPosition = MyPosition.fromJson(userDoc.data()!['position'] as Map<String, dynamic>);
  //   final Timestamp userCreatedAt = userDoc.data()!['createdAt'] as Timestamp;
  //   final String userFullName = (userDoc.data()!['firstName'] as String) + (userDoc.data()!['lastName'] as String);

  //   var gift = GiftGiver(
  //     id: docRef.id,
  //     userName: name,
  //     userFullName: userFullName,
  //     userImageUrl: giverImageUrl,
  //     userAvgRating:
  //         authController.currentUserInfo.value.maybeWhen(data: (user) => user.averageRating, orElse: () => 0),
  //     userTotRating: authController.currentUserInfo.value.maybeWhen(data: (user) => user.totalRating, orElse: () => 0),
  //     userRatingSum: authController.currentUserInfo.value.maybeWhen(data: (user) => user.ratingSum, orElse: () => 0),
  //     userPosition: userPosition,
  //     area: controller.area.value,
  //     location: controller.location.value,
  //     giftFor: controller.giftFor.value,
  //     distance: controller.distance.value,
  //     giftType: controller.giftType.value,
  //     uid: _auth.currentUser!.uid,
  //     imageUrl: url,
  //     givingGiftInDays: controller.givingGiftInDays.value,
  //     giftDetails: controller.giftDetails.value,
  //     listingDate: Timestamp.now(),
  //     listingForDays: controller.listingFor.value.toInt(),
  //     pickUpTime: controller.pickUpTime.value ?? Timestamp.now(),
  //     canLeaveOutside: controller.canLeaveOutside.value,
  //     position: myPosition,
  //     userCreatedAt: userCreatedAt,
  //     createdAt: Timestamp.now(),
  //   );

  //   await docRef.set(gift.toJson());
  //   controller.isUploading.value = false;
  // }

  @override
  Stream<GiftGiverListUnion> giftStreamByLocation() {
    GiftController giftController = Get.find();

    final LatLng currentUserLatLng = Get.find<AuthController>().currentUserPosition.value;

    print('GiftGiverService: ' + currentUserLatLng.toString());

    GeoFirePoint center = geo.point(latitude: currentUserLatLng.latitude, longitude: currentUserLatLng.longitude);

    final collectionReference = _firestore.collection('gifts');

    try {
      var stream = geo
          .collection(collectionRef: collectionReference)
          .within(
            center: center,
            radius: giftController.searchRadius,
            field: 'position',
            strictMode: true,
          )
          .map((docList) {
        final List<GiftGiver> list = [];

        docList.forEach((docSnap) {
          list.add(GiftGiver.fromJson(docSnap.data()!));
        });

        print('Service: list size ${list.length}');

        return list.isEmpty ? const GiftGiverListUnion.empty() : GiftGiverListUnion.data(list);
      });

      return stream;
    } catch (e) {
      return Stream.value(
        GiftGiverListUnion.error(GiftGiverException(message: e.toString())),
      );
    }
  }
}

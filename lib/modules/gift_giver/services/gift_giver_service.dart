import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import '../../../models/gift_giver/my_position.dart';
import '../widgets/gift_error.dart';

abstract class BaseGiftGiverService {
  Future<void> addGift();

  Stream<GiftGiverListUnion> giftStreamByLocation();

  Future<bool> updateGiftGiver({required String giftId, required GiftReceiver giftReceiver});
}

class GiftGiverService implements BaseGiftGiverService {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Future<bool> updateGiftGiver({required String giftId, required GiftReceiver giftReceiver}) async {
    try {
      await _firestore.collection('gifts').doc(giftId).update(giftReceiver.toJson());

      return true;
    } on FirebaseException catch (e) {
      throw GiftError(e);
    }
  }

  @override
  Future<void> addGift() async {
    GiftAddFormController controller = Get.find();
    controller.isUploading.value = true;

    LatLng giftPosition = controller.markers.first.position;
    var myLocation = geo.point(latitude: giftPosition.latitude, longitude: giftPosition.longitude);
    var pos = myLocation.data as Map<dynamic, dynamic>;

    MyPosition myPosition = MyPosition(geohash: pos['geohash'] as String, geopoint: pos['geopoint'] as GeoPoint);

    var fileExtension = path.extension(controller.imageFile.value.path);

    var uuid = const Uuid().v4();

    var firebaseStorageRef = firebase_storage.FirebaseStorage.instance.ref().child('gifts/images/$uuid$fileExtension');

    try {
      await firebaseStorageRef.putFile(controller.imageFile.value);
    } on FirebaseException catch (e) {
      throw Exception(e.toString());
    }

    String url = await firebaseStorageRef.getDownloadURL();

    var docRef = _firestore.collection('gifts').doc();
    AuthController authController = Get.find();

    var userDoc = await _firestore.collection('users').doc(_auth.currentUser!.uid).get();

    var name = userDoc.data() == null ? '' : userDoc.data()!['userName'] as String;
    var giverImageUrl = userDoc.data() == null ? '' : userDoc.data()!['imageUrl'] as String;
    MyPosition userPosition = MyPosition.fromJson(userDoc.data()!['position'] as Map<String, dynamic>);
    Timestamp userCreatedAt = userDoc.data()!['createdAt'] as Timestamp;
    String userFullName = (userDoc.data()!['firstName'] as String) + (userDoc.data()!['lastName'] as String);

    var gift = GiftGiver(
      id: docRef.id,
      userName: name,
      userFullName: userFullName,
      userImageUrl: giverImageUrl,
      userAvgRating: authController.currentUserInfo.value.maybeWhen(data: (user) => user.averageRating, orElse: () => 0),
      userTotRating: authController.currentUserInfo.value.maybeWhen(data: (user) => user.totalRating, orElse: () => 0),
      userRatingSum: authController.currentUserInfo.value.maybeWhen(data: (user) => user.ratingSum, orElse: () => 0),
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

    await docRef.set(gift.toJson());
    controller.isUploading.value = false;
  }

  @override
  Stream<GiftGiverListUnion> giftStreamByLocation() {
    GiftController giftController = Get.find();

    final LatLng currentUserLatLng = Get.find<AuthController>().currentUserPosition.value;

    print('GiftGiverService: ' + currentUserLatLng.toString());

    GeoFirePoint center = geo.point(latitude: currentUserLatLng.latitude, longitude: currentUserLatLng.longitude);

    var collectionReference = _firestore.collection('gifts');
    // .where('uid', isNotEqualTo: _auth.currentUser?.uid);

    // return Stream.value(
    //   GiftGiverListUnion.error(GiftGiverException(message: 'Test Error')),
    // );

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
        List<GiftGiver> list = [];

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

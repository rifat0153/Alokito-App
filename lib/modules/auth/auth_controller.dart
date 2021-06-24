import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../models/user/local_user.dart';
import 'auth_service.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Rx<AuthService> authService = AuthService().obs;
  final currentUser = LocalUser(
          firstName: '',
          lastName: '',
          userName: '',
          email: '',
          imageUrl: 'https://workhound.com/wp-content/uploads/2017/05/placeholder-profile-pic.png',
          position: MyPosition(geohash: '', geopoint: GeoPoint(0, 0)),
          createdAt: Timestamp.now())
      .obs;

  final Rx<String> firebaseUser = ''.obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  // final currentUserName = ''.obs;
  // final currentUserImageUrl = ''.obs;
  // final currentUserGiftOffered = 0.obs;
  // final currentUserGiftReceived = 0.obs;
  // final currentUserCreatedAt = Timestamp.now().obs;
  // final currentUserLocation = ''.obs;
  // final currentUserRating = 0.0.obs;
  // final currentUserTotalRating = 0.0.obs;
  // final currentUserRatingSum = 0.0.obs;
  // final currentUserHasNotifications = false.obs;
  // final currentUserPosition = const MyPosition(geohash: '', geopoint: GeoPoint(0, 0)).obs;

  @override
  void onInit() {
    authStream.bindStream(authService.value.authStateChanges);
    bindMyUserStream();
    getUserInfoAndSetCurrentUser();
    super.onInit();
  }

  @override
  void onClose() {
    authStream.close();
    currentUser.close();
    super.onClose();
  }

  double calculateDistanceForGiftDetail({required GiftGiver giftGiver}) {
    final geo = Geoflutterfire();
    var giftGiverPoint =
        geo.point(latitude: giftGiver.position.geopoint.latitude, longitude: giftGiver.position.geopoint.longitude);

    final GiftController giftController = Get.find();

    var distance = giftGiverPoint.distance(
        lat: giftController.currentUserLocation.value.latitude,
        lng: giftController.currentUserLocation.value.longitude);

    return distance;
  }

  Future<void> getUserInfoAndSetCurrentUser() async {
    print('AuthController: getting user form DB call');
    var userDoc = await FirebaseFirestore.instance.collection('users').doc(auth.currentUser?.uid).get();
    LocalUser localUser = LocalUser.fromJson(userDoc.data()!);
    currentUser.value = localUser;
  }

  void bindMyUserStream() {
    currentUser.bindStream(authService.value.loggedInUserStream());
  }

  void setCurrentUser(LocalUser user) => currentUser.value = user;
  LocalUser getCurrentUser() => currentUser.value;
}

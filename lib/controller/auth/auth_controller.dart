import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import '../../models/user/local_user.dart';
import '../../modules/auth/auth_service.dart';

class AuthController extends GetxController {
  Rx<AuthService> authService = AuthService().obs;
  final currentUser = const LocalUserInfo.loading().obs;
  final Rx<String> firebaseUser = ''.obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  final currentUserName = ''.obs;
  final currentUserImageUrl = ''.obs;
  final currentUserGiftOffered = 0.obs;
  final currentUserGiftReceived = 0.obs;
  final currentUserCreatedAt = Timestamp.now().obs;
  final currentUserLocation = ''.obs;
  final currentUserRating = 0.0.obs;
  final currentUserTotalRating = 0.0.obs;
  final currentUserRatingSum = 0.0.obs;
  final currentUserHasNotifications = false.obs;
  final currentUserPosition =
      const MyPosition(geohash: '', geopoint: GeoPoint(0, 0)).obs;

  @override
  void onInit() {
    authStream.bindStream(authService.value.authStateChanges);
    super.onInit();
  }

  double calculateDistanceForGiftDetail({required GiftGiver giftGiver}) {
    final geo = Geoflutterfire();
    var giftGiverPoint = geo.point(
        latitude: giftGiver.position.geopoint.latitude,
        longitude: giftGiver.position.geopoint.longitude);

    final GiftController giftController = Get.find();

    var distance = giftGiverPoint.distance(
        lat: giftController.currentUserLocation.value.latitude,
        lng: giftController.currentUserLocation.value.longitude);

    return distance;
  }

  void bindMyUserStream() {
    currentUser.bindStream(authService.value.loggedInUserStream());
  }

  void setCurrentUser(LocalUserInfo user) => currentUser.value = user;
  LocalUserInfo getCurrentUser() => currentUser.value;
}

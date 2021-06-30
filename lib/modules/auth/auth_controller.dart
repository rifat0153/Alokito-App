import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../models/user/local_user.dart';
import 'auth_service.dart';

class AuthController extends GetxController {
  AuthService authService = AuthService(FirebaseAuth.instance, FirebaseFirestore.instance);
  final Rx<LocalUser> currentUser = initialUser.obs;

  final Rx<String> firebaseUser = ''.obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  @override
  void onInit() {
    authStream.bindStream(authService.authStateChanges);
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

  Future<void> toggleHasGiftReuqest() async {
    await authService
        .updateLocalUser(currentUser.value.copyWith(hasGiftAskRequest: !currentUser.value.hasGiftAskRequest));
  }

  Future<void> localUserHasNotification() async {
    await authService.updateLocalUser(currentUser.value.copyWith(hasNotifications: true));
  }

  Future<void> localUserDoesNotHaveNotification() async {
    await authService.updateLocalUser(currentUser.value.copyWith(hasNotifications: false));
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
    var userDoc =
        await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser?.uid ?? '').get();
    if (userDoc.exists) {
      LocalUser localUser = LocalUser.fromJson(userDoc.data()!);
      currentUser.value = localUser;
    }
  }

  void bindMyUserStream() {
    currentUser.bindStream(authService.loggedInUserStream());
  }

  void setCurrentUser(LocalUser user) => currentUser.value = user;
  LocalUser getCurrentUser() => currentUser.value;
}

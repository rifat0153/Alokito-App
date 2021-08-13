import 'package:alokito_new/models/login/login.dart';
import 'package:alokito_new/modules/auth/auth_exception.dart';
import 'package:alokito_new/modules/auth/controllers/login_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import '../../../models/user/local_user.dart';
import '../services/auth_service.dart';

class AuthController extends GetxController {
  AuthService authService = AuthService(FirebaseAuth.instance, FirebaseFirestore.instance);
  final Rx<LocalUser> currentUser = initialUser.obs;

  final RxBool registering = false.obs;
  final RxBool authCompleted = false.obs;
  final RxBool errors = false.obs;

  final Rx<String> firebaseUser = ''.obs;
  final Rx<LocalUserInfo> currentUserInfo = const LocalUserInfo.loading().obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  final currentUserPosition = const LatLng(0, 0).obs;

  @override
  void onInit() {
    authStream.bindStream(authService.authStateChanges);
    bindMyUserStream();
    // getUserInfoAndSetCurrentUser();
    bindLocationData();
    super.onInit();
  }

  @override
  void onClose() {
    authStream.close();
    currentUser.close();
    super.onClose();
  }

  Future signOut() async {
    await authService.signOut();

    Get.find<LoginController>().loginStatus.value =const LoginStatus.notLoggedIn();
    authCompleted.value = false;
  }

  void updateLocalUser(LocalUser localUser) {
    currentUserInfo.value = LocalUserInfo.data(localUser);
  }

  Future<void> userHasGiftReuqest(String giftId) async {
    try {
      await authService.updateLocalUser(currentUserInfo.value
          .maybeWhen(
              data: (user) => user,
              orElse: () {
                throw AuthException(message: 'User Info not found');
              })
          .copyWith(
            hasGiftAskRequest: true,
            requestedGiftId: giftId,
          ));
    } catch (e) {
      Get.snackbar('Something Went Wrong', e.toString());
    }
  }

  Future<void> userDoesNotHaveGiftReuqest() async {
    try {
      await authService.updateLocalUser(currentUserInfo.value
          .maybeWhen(
              data: (user) => user,
              orElse: () {
                throw AuthException(message: 'User Info not found');
              })
          .copyWith(
            hasGiftAskRequest: false,
            requestedGiftId: '',
          ));
    } catch (e) {
      Get.snackbar('Something Went Wrong', e.toString());
    }
  }

  Future<void> userHasNotification(String id) async {
    await authService.updateUserNotificationStatus(id, true);
  }

  Future<void> userDoesNotHaveNotification() async {
    try {
      await currentUserInfo.value.when(
          data: (user) async {
            if (user.hasNotifications) {
              await authService.updateUserNotificationStatus(user.id!, false);
            }
          },
          loading: () {},
          error: (error) {});
    } catch (e) {
      Get.snackbar('Something Went Wrong', e.toString());
    }
  }

  double calculateDistanceForGiftDetail({required GiftGiver giftGiver}) {
    final geo = Geoflutterfire();
    final giftGiverPoint = geo.point(
        latitude: giftGiver.position.geopoint.latitude, longitude: giftGiver.position.geopoint.longitude);

    final GiftController giftController = Get.find();

    final distance = giftGiverPoint.distance(
        lat: giftController.currentUserLocation.value.latitude,
        lng: giftController.currentUserLocation.value.longitude);

    return distance;
  }

  Future<void> getUserInfoAndSetCurrentUser() async {
    print('AuthController: getting user form DB call');

    currentUserInfo.value = const LocalUserInfo.loading();

    try {
      LocalUser? userInfo = await authService.getLocalUserInfo(FirebaseAuth.instance.currentUser?.uid ?? '');

      if (userInfo != null) {
        currentUser.value = userInfo;
        errors.value = false;
        currentUserInfo.value = LocalUserInfo.data(userInfo);
      } else {
        currentUserInfo.value = LocalUserInfo.error('Reg error maybe');
      }
    } on AuthException catch (e) {
      errors.value = true;
      currentUserInfo.value = LocalUserInfo.error(e.toString());
    }
  }

  void bindLocationData() async {
    LocationData loc = await Location().getLocation();
    currentUserPosition.value = LatLng(loc.latitude!, loc.longitude!);

    print('AuthController: ' + currentUserPosition.value.toString());
  }

  void bindMyUserStream() {
    currentUser.bindStream(authService.loggedInUserStream());
  }
}

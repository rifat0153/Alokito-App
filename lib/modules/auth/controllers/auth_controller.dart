import 'package:alokito_new/shared/my_bottomsheets.dart';

import '../../../core/language/language_controller.dart';
import '../../../core/location/location_helper.dart';
import '../../../models/login/login.dart';
import '../../../models/user/local_user.dart';
import '../auth_exception.dart';
import 'login_controller.dart';
import '../../../models/gift_giver/gift.dart';
import '../services/auth_service.dart';
import '../../../shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AuthController extends GetxController {
  AuthController(this.authService);
  final AuthService authService;

  // track notification number from firestore
  final Rx<int> newNotifications = 0.obs;

  final Rx<LocalUser> currentUser = initialUser.obs;

  final RxBool registering = false.obs;
  final RxBool authCompleted = false.obs;
  final RxBool errors = false.obs;

  final Rx<String> firebaseUser = ''.obs;
  final Rx<LocalUserInfo> currentUserInfo = const LocalUserInfo.loading().obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  final Rx<LatLng> currentUserPosition = const LatLng(0, 0).obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    // Set Language
    await Get.find<LanguageController>().setSavedLocal();

    // bind newNotification
    bindNewNotificationStream();

    // bind user value
    authStream.bindStream(authService.authStateChanges);
    await bindLocationData();
  }

  @override
  void onClose() {
    authStream.close();
    currentUser.close();
    super.onClose();
  }

  void bindNewNotificationStream() {
    newNotifications.bindStream(authService
        .streamNewNotificationNumber(currentUserInfo.value.maybeWhen(data: (user) => user.uid!, orElse: () => 'as')));
  }

  Future signOut() async {
    await authService.signOut();

    Get.find<LoginController>().loginStatus.value = const LoginStatus.notLoggedIn();
    authCompleted.value = false;
    newNotifications.refresh();
  }

  double calculateDistanceForGiftDetail({required Gift gift}) {
    final distance = LocationHelper.determineDistance(
      gift.geometry.coordinates.last,
      gift.geometry.coordinates.first,
      currentUserPosition.value.latitude,
      currentUserPosition.value.longitude,
    );

    return distance;
  }

  Future<void> getUserInfoAndSetCurrentUser() async {
    print('AuthController: getting user form DB call');

    currentUserInfo.value = const LocalUserInfo.loading();

    try {
      final LocalUserInfo userInfo = await authService.getLocalUserDB(FirebaseAuth.instance.currentUser?.uid ?? '');

      currentUserInfo.value = userInfo;

      bindNewNotificationStream();
    } on AuthException catch (e) {
      errors.value = true;
      currentUserInfo.value = LocalUserInfo.error(e.toString());
    }
  }

  Future<void> updateLocalUser(LocalUser updatedUser) async {
    try {
      currentUserInfo.value = LocalUserInfo.data(updatedUser);
    } catch (e) {
      currentUserInfo.value = LocalUserInfo.error(e.toString());
    }
  }

  Future<void> bindLocationData() async {
    try {
      print('Getting user location');
      final Position position = await LocationHelper.determinePosition();

      print(position);

      currentUserPosition.value = LatLng(position.latitude, position.longitude);

      print('AuthController: ' + currentUserPosition.value.toString());
    } catch (e) {
      await MyBottomSheet.showErrorBottomSheet(
          'Location services are disabled.\nAalokito needs location service to locate nearby gift givers and requesters');
    }
  }
}

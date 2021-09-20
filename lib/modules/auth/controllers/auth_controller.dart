import 'package:alokito_new/core/language/language_controller.dart';
import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/login/login.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/auth_exception.dart';
import 'package:alokito_new/modules/auth/controllers/login_controller.dart';
import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/modules/auth/services/auth_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AuthController extends GetxController {
  AuthController(this.authService);
  AuthService authService;

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

    authStream.bindStream(authService.authStateChanges);
    await bindLocationData();
  }

  @override
  void onClose() {
    authStream.close();
    currentUser.close();
    super.onClose();
  }

  Future signOut() async {
    await authService.signOut();

    Get.find<LoginController>().loginStatus.value = const LoginStatus.notLoggedIn();
    authCompleted.value = false;
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
    print('Getting user location');
    final Position position = await LocationHelper.determinePosition();

    print(position);

    currentUserPosition.value = LatLng(position.latitude, position.longitude);

    print('AuthController: ' + currentUserPosition.value.toString());
  }
}

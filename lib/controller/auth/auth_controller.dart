import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import '../../models/user/local_user.dart';
import '../../services/auth/auth_service.dart';

class AuthController extends GetxController {
  Rx<AuthService> authService = AuthService().obs;
  final currentUser = const LocalUserInfo.loading().obs;
  final Rx<String> firebaseUser = ''.obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  final currentUserName = ''.obs;
  final currentUserImageUrl = ''.obs;
  final currentUserImageUrl = ''.obs;
  final currentUserImageUrl = ''.obs;
  final currentUserImageUrl = ''.obs;
  final currentUserImageUrl = ''.obs;

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

  @override
  void onInit() {
    authStream.bindStream(authService.value.authStateChanges);
    super.onInit();
  }

  void bindMyUserStream() {
    currentUser.bindStream(authService.value.loggedInUserStream());
  }

  void setCurrentUser(LocalUserInfo user) => currentUser.value = user;
  LocalUserInfo getCurrentUser() => currentUser.value;
}

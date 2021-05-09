import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../models/user/local_user.dart';
import '../../services/auth/auth_service.dart';

class AuthController extends GetxController {
  Rx<AuthService> authService = AuthService().obs;
  final currentUser = LocalUserInfo.loading().obs;
  final Rx<String> firebaseUser = ''.obs;
  final authStream = FirebaseAuth.instance.currentUser.obs;

  @override
  void onInit() {
    authStream.bindStream(authService.value.authStateChanges);
    super.onInit();
  }

  void bindMyUserStream() {
    currentUser.bindStream(authService.value.loggedInUserStream());
    currentUser.refresh();
  }

  setCurrentUser(LocalUserInfo user) => currentUser.value = user;
  LocalUserInfo getCurrentUser() => currentUser.value;
}

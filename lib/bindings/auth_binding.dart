import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:get/get.dart';

class AuthControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}

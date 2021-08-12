import 'dart:ui';
import 'package:get/get.dart';

class LanguageController extends GetxController {
    
  void changeLocale(String language, String country) {
    final locale = Locale(language, country);
    Get.updateLocale(locale);
  }
}

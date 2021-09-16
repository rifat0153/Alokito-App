import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  @override
  void onInit()  {
    super.onInit();
     setSavedLocal();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  //   setSavedLocal();
  // }

  Future<void> setSavedLocal() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String languageCode = prefs.getString('languageCode') ?? 'en';
    final String countryCode = prefs.getString('countryCode') ?? 'US';

    print('IN setSavedLocal');
    print(languageCode);
    print(countryCode);

    await changeLocale(languageCode, countryCode);
  }

  Future<void> changeLocale(String language, String country) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final locale = Locale(language, country);

    print('Change locale called with $language $country');

    Get.updateLocale(locale);
    await prefs.setString('languageCode', language);
    await prefs.setString('countryCode', country);
  }
}

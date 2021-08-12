import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceProvider extends GetxController {
  PreferenceProvider(this.prefs);

  SharedPreferences prefs;


  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    super.onInit();
  }
}

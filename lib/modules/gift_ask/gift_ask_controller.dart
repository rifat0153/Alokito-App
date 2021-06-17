import 'package:get/get.dart';

class GiftAskController extends GetxController {
  // final service
  var profileOptions = ['Show to all', 'Let me choose'];
  var giftTypeOptions = ['Food', 'Medicine', 'Others'];

  var selectedGiftType = 'Food'.obs;
  var selectedProfileType = 'Show to all'.obs;
}

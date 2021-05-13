import 'dart:io';

import 'package:get/get.dart';

class GiftAddFormController extends GetxController {
  var distance = 1.obs;
  var giftDetails = ''.obs;
  var listingFor = 5.0.obs;
  Rx<File> imageFile = File('').obs;
}

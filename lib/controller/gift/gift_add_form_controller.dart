import 'dart:io';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAddFormController extends GetxController {
  var distance = 1.obs;
  var giftDetails = ''.obs;
  var listingFor = 5.0.obs;
  var canLeaveOutside = false.obs;
  var isLocationSelected = false.obs;
  var markers = List<Marker>.empty().obs;
  Rx<File> imageFile = File('').obs;
}

//  markers = [
//     Marker(
//       markerId: MarkerId('1'),
//       position: LatLng(23.7590, 90.4119),
//     )
//   ];

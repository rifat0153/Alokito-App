import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftController extends GetxController {

  RxBool loading = false.obs;

  var currentUserLocation = const LatLng(0, 0).obs;
}

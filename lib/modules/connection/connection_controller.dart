import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'connection_service.dart';

class ConnectionController extends GetxController {
  ConnectionService connectionService = ConnectionService();

  Rx<ConnectivityResult> connectionStatus = ConnectivityResult.none.obs;

  RxBool dismissible = false.obs;

  StreamSubscription? streamSubscription;

  @override
  void onInit() {
    connectionStatus.bindStream(connectionService.streamConnectionResult());

    streamSubscription = connectionStatus.listen((connectionType) {
      print(connectionStatus.value);
      if (connectionType == ConnectivityResult.none) {
        Get.bottomSheet(
          Container(
              height: 50,
              color: Colors.white,
              child:
                  const Text('No Internet Connection 😢', textAlign: TextAlign.center, textScaleFactor: 1.5)),
          isDismissible: true,
          enableDrag: false,
        );
      }
      if (connectionType == ConnectivityResult.mobile || connectionType == ConnectivityResult.wifi) {
        bool? bottomSheetOpen = Get.isBottomSheetOpen;

        if (bottomSheetOpen != null) {
          Get.back();
        }

        Get.bottomSheet(
          Container(
              height: 50,
              color: Colors.white,
              child: const Text('Interet is back', textAlign: TextAlign.center, textScaleFactor: 1)),
          isDismissible: true,
          enableDrag: true,
          persistent: false,
        );
      }
    });

    super.onInit();
  }
}

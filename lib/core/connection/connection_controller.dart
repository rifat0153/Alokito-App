import 'dart:async';

import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'connection_service.dart';

class ConnectionController extends GetxController {
  ConnectionService connectionService = ConnectionService();

  Rx<ConnectivityResult> connectionStatus = ConnectivityResult.none.obs;
  Rx<ConnectivityResult> previousStatus = ConnectivityResult.none.obs;

  bool firstStart = true;

  StreamSubscription? streamSubscription;

  @override
  void onInit() {
    connectionStatus.bindStream(connectionService.streamConnectionResult());

    streamSubscription = connectionStatus.listen((connectionType) {
      print(connectionStatus.value);
      if (connectionType == ConnectivityResult.none) {
        Get.bottomSheet(
          Container(
              height: 50.sp,
              width: 0.8.sw,
              color: Colors.white,
              child:
                  const Text('No Internet Connection 😢', textAlign: TextAlign.center, textScaleFactor: 1.5)),
          isDismissible: true,
          enableDrag: false,
        );
      }
      if (connectionType == ConnectivityResult.mobile || connectionType == ConnectivityResult.wifi) {
        bool? bottomSheetOpen = Get.isBottomSheetOpen;

        // if (bottomSheetOpen != null) {
        //   Get.back();
        // }

        if (firstStart) {
          Get.back();
        }

        if (!firstStart) {
          Get.bottomSheet(
            Container(
                height: 50.sp,
                width: 0.8.sw,
                color: Colors.white,
                child: const Text('Interet is back', textAlign: TextAlign.center, textScaleFactor: 1)),
            isDismissible: true,
            enableDrag: true,
            persistent: false,
          );
          firstStart = false;
        } else {
          firstStart = false;
        }
      }
    });

    super.onInit();
  }

  @override
  void onReady() {
    if (connectionStatus.value == ConnectivityResult.none) {
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
    super.onReady();
  }
}

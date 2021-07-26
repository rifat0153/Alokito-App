import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'connection_service.dart';

class ConnectionController extends GetxController {
  ConnectionService connectionService = ConnectionService();

  Rx<ConnectivityResult> connectionStatus = ConnectivityResult.none.obs;

  StreamSubscription? streamSubscription;

  @override
  void onInit() {
    streamSubscription = connectionStatus.listen((connectionType) {
      print(connectionStatus.value);

      if (connectionType == ConnectivityResult.none || connectionType == ConnectivityResult.none) {
        bool? bottomSheetOpen = Get.isBottomSheetOpen;

        if (bottomSheetOpen != null) {
          print('Bottom Sheet is open');
           Get.back();
        } else {
          print('Bottom Sheet is not open');
        }
      }

      if (connectionType == ConnectivityResult.none) {
        print('NOOOOOOOOOO INtene ******************************************');

        Get.bottomSheet(
          Container(
              height: 150,
              color: Colors.greenAccent,
              child: const Text('No Internet Connection', textScaleFactor: 2)),
          // barrierColor: Colors.red[50],
          isDismissible: false,
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(35), side: const BorderSide(width: 5, color: Colors.black)),
          enableDrag: false,
        );
      }
    });

    connectionStatus.bindStream(connectionService.streamConnectionResult());
    super.onInit();
  }
}

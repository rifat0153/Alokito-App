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
      if (connectionType == ConnectivityResult.none) {
        print('NOOOOOOOOOO INtene ******************************************');

        // var snackbar = Get.snackbar('Internet Error', 'No internet connection');

        // Get.snackbar('Internet Error', 'No internet connection',
        //     backgroundColor: Colors.green.withOpacity(0.5));

        // Get.to(
        //   Get.dialog(
        //     Container(
        //       color: Colors.orange,
        //       height: 200,
        //       width: 200,

        //       child: const Text('No Internet'),
        //     ),
        //   ),
        // );
      }
    });

    connectionStatus.bindStream(connectionService.streamConnectionResult());
    super.onInit();
  }
}

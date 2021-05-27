import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/connectivity/connection_controller.dart';

class ConnectionView extends StatelessWidget {
  final ConnectionController connectionController =
      Get.put(ConnectionController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Text(connectionController.connectionStatus.toString()),
      ),
    );
  }
}

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';
import '../../modules/connection/connection_service.dart';

class ConnectionController extends GetxController {
  ConnectionService connectionService = ConnectionService();

  Rx<ConnectivityResult> connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    connectionStatus.bindStream(connectionService.streamConnectionResult());
    super.onInit();
  }
}

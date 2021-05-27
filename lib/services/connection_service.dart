import 'package:connectivity/connectivity.dart';

class ConnectionService {
  ConnectionService();

  Stream<ConnectivityResult> streamConnectionResult() {
    return Connectivity().onConnectivityChanged;
  }
}

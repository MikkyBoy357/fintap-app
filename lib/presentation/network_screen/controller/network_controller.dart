import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import '../no_network_screen.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      Get.to(() => NoNetworkScreen());
    } else {
      if (Get.isSnackbarOpen) {
        Get.back();
      }
    }
  }
}

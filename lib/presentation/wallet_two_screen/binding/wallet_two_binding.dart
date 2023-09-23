import '../controller/wallet_two_controller.dart';
import 'package:get/get.dart';

class WalletTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletTwoController());
  }
}

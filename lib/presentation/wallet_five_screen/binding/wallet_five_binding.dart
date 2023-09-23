import '../controller/wallet_five_controller.dart';
import 'package:get/get.dart';

class WalletFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletFiveController());
  }
}

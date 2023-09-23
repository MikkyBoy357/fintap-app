import '../controller/wallet_four_controller.dart';
import 'package:get/get.dart';

class WalletFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletFourController());
  }
}

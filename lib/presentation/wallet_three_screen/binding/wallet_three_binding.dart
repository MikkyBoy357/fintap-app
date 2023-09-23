import '../controller/wallet_three_controller.dart';
import 'package:get/get.dart';

class WalletThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletThreeController());
  }
}

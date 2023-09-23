import '../controller/coin_reward_controller.dart';
import 'package:get/get.dart';

class CoinRewardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoinRewardController());
  }
}

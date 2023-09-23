import '../controller/coin_reward_detail_controller.dart';
import 'package:get/get.dart';

class CoinRewardDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoinRewardDetailController());
  }
}

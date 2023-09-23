import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/coin_reward_screen/models/coin_reward_model.dart';

class CoinRewardController extends GetxController {
  Rx<CoinRewardModel> coinRewardModelObj = CoinRewardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

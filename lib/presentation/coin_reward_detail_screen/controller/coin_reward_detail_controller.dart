import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/coin_reward_detail_screen/models/coin_reward_detail_model.dart';

class CoinRewardDetailController extends GetxController {
  Rx<CoinRewardDetailModel> coinRewardDetailModelObj =
      CoinRewardDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

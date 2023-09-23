import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/my_reward_screen/models/my_reward_model.dart';

class MyRewardController extends GetxController {
  Rx<MyRewardModel> myRewardModelObj = MyRewardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

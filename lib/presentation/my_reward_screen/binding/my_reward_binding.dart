import '../controller/my_reward_controller.dart';
import 'package:get/get.dart';

class MyRewardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyRewardController());
  }
}

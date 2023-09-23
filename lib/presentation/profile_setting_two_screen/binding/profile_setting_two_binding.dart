import '../controller/profile_setting_two_controller.dart';
import 'package:get/get.dart';

class ProfileSettingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingTwoController());
  }
}

import '../controller/profile_setting_four_controller.dart';
import 'package:get/get.dart';

class ProfileSettingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingFourController());
  }
}

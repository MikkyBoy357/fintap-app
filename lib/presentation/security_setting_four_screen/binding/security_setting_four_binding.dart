import '../controller/security_setting_four_controller.dart';
import 'package:get/get.dart';

class SecuritySettingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingFourController());
  }
}

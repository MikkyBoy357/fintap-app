import '../controller/security_setting_two_controller.dart';
import 'package:get/get.dart';

class SecuritySettingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingTwoController());
  }
}

import '../controller/security_setting_five_controller.dart';
import 'package:get/get.dart';

class SecuritySettingFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingFiveController());
  }
}

import '../controller/security_setting_controller.dart';
import 'package:get/get.dart';

class SecuritySettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingController());
  }
}

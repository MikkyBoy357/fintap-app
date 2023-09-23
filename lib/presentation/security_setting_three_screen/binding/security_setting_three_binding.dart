import '../controller/security_setting_three_controller.dart';
import 'package:get/get.dart';

class SecuritySettingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingThreeController());
  }
}

import '../controller/security_setting_seven_controller.dart';
import 'package:get/get.dart';

class SecuritySettingSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingSevenController());
  }
}

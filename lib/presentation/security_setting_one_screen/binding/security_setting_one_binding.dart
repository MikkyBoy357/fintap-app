import '../controller/security_setting_one_controller.dart';
import 'package:get/get.dart';

class SecuritySettingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingOneController());
  }
}

import '../controller/profile_setting_one_controller.dart';
import 'package:get/get.dart';

class ProfileSettingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingOneController());
  }
}

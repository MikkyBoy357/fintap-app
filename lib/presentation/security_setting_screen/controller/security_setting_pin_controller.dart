import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/security_setting_screen/models/security_setting_model.dart';

class SecuritySettingController extends GetxController {
  Rx<SecuritySettingModel> securitySettingModelObj = SecuritySettingModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

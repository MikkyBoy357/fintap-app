import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/profile_setting_bottomsheet/models/profile_setting_model.dart';

class ProfileSettingController extends GetxController {
  Rx<ProfileSettingModel> profileSettingModelObj = ProfileSettingModel().obs;
  Rx<bool> isMale = true.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/profile_setting_four_screen/models/profile_setting_four_model.dart';
import 'package:flutter/cupertino.dart';

class ProfileSettingFourController extends GetxController {
  Rx<ProfileSettingFourModel> profileSettingFourModelObj =
      ProfileSettingFourModel().obs;

  TextEditingController inputController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

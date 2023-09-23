import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/security_setting_two_screen/models/security_setting_two_model.dart';
import 'package:flutter/material.dart';

class SecuritySettingTwoController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  Rx<SecuritySettingTwoModel> securitySettingTwoModelObj =
      SecuritySettingTwoModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  Rx<bool> isShowPassword2 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
    inputTwoController.dispose();
  }
}

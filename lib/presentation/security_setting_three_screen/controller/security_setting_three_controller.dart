import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/security_setting_three_screen/models/security_setting_three_model.dart';
import 'package:flutter/material.dart';

class SecuritySettingThreeController extends GetxController {
  TextEditingController emailOneController =
      TextEditingController(text: 'chrisaaron@gmail.com');

  Rx<SecuritySettingThreeModel> securitySettingThreeModelObj =
      SecuritySettingThreeModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailOneController.dispose();
  }
}

class SecuritySettingPinController extends GetxController {
  TextEditingController pinController = TextEditingController(text: '0000');

  Rx<SecuritySettingThreeModel> securitySettingThreeModelObj =
      SecuritySettingThreeModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    pinController.dispose();
  }
}

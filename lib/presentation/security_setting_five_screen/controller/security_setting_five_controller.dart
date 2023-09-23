import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/security_setting_five_screen/models/security_setting_five_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class SecuritySettingFiveController extends GetxController with CodeAutoFill {
  Rx<TextEditingController>? otpController;

  Rx<SecuritySettingFiveModel> securitySettingFiveModelObj =
      SecuritySettingFiveModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void codeUpdated() {
    otpController!.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    otpController = TextEditingController().obs;
    //for autoFilling the smsCode
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    otpController!.value.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/security_setting_four_screen/models/security_setting_four_model.dart';
import 'package:flutter/material.dart';

class SecuritySettingFourController extends GetxController {
  TextEditingController inputOneController = TextEditingController();

  Rx<SecuritySettingFourModel> securitySettingFourModelObj =
      SecuritySettingFourModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputOneController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    securitySettingFourModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    securitySettingFourModelObj.value.dropdownItemList.refresh();
  }
}

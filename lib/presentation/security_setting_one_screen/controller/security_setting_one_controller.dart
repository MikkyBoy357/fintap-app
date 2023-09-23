import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/security_setting_one_screen/models/security_setting_one_model.dart';
import 'package:flutter/material.dart';

class SecuritySettingOneController extends GetxController {
  Rx<SecuritySettingOneModel> securitySettingOneModelObj =
      SecuritySettingOneModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;
  TextEditingController phoneNumberController =
      TextEditingController(text: '2184756212');
  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('20').obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

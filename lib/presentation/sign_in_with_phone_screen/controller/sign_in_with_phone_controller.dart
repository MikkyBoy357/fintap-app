import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/sign_in_with_phone_screen/models/sign_in_with_phone_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class SignInWithPhoneController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignInWithPhoneModel> signInWithPhoneModelObj = SignInWithPhoneModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('20').obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/complete_profile_two_screen/models/complete_profile_two_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class CompleteProfileTwoController extends GetxController {
  Rx<CompleteProfileTwoModel> completeProfileTwoModelObj =
      CompleteProfileTwoModel().obs;
  TextEditingController phoneNumberController = TextEditingController();
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

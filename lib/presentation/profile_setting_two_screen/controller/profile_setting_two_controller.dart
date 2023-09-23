import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/profile_setting_two_screen/models/profile_setting_two_model.dart';
import 'package:flutter/material.dart';

class ProfileSettingTwoController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<ProfileSettingTwoModel> profileSettingTwoModelObj =
      ProfileSettingTwoModel().obs;
  Rx<DateTime> selectedDate = DateTime(1997).obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(1980),
        lastDate: DateTime.now());
    if (picked != null) {
      selectedDate.value = picked;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }
}

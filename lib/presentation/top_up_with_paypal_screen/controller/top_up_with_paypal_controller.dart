import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/top_up_with_paypal_screen/models/top_up_with_paypal_model.dart';
import 'package:flutter/material.dart';

class TopUpWithPaypalController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<TopUpWithPaypalModel> topUpWithPaypalModelObj = TopUpWithPaypalModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    topUpWithPaypalModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    topUpWithPaypalModelObj.value.dropdownItemList.refresh();
  }
}

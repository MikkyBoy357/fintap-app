import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/new_card_screen/models/new_card_model.dart';
import 'package:flutter/material.dart';

class NewCardController extends GetxController {
  TextEditingController textInputController1 = TextEditingController();
  TextEditingController textInputController2 = TextEditingController();

  Rx<NewCardModel> newCardModelObj = NewCardModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textInputController1.dispose();
    textInputController2.dispose();
  }

  Rx<bool> checkboxVal = false.obs;

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    newCardModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    newCardModelObj.value.dropdownItemList.refresh();
  }
}

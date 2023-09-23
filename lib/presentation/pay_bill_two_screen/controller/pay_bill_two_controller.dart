import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/pay_bill_two_screen/models/pay_bill_two_model.dart';
import 'package:flutter/material.dart';

class PayBillTwoController extends GetxController {
  TextEditingController componentFiveController = TextEditingController();

  Rx<PayBillTwoModel> payBillTwoModelObj = PayBillTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentFiveController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    payBillTwoModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    payBillTwoModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    payBillTwoModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    payBillTwoModelObj.value.dropdownItemList1.refresh();
  }
}

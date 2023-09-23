import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/shared_data.dart';
import 'package:fintap/presentation/top_up_with_bank_transfer_screen/models/top_up_with_bank_transfer_model.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';

import '../models/virtual_bank_model.dart';

class TopUpWithBankTransferController extends GetxController {
  Rx<TopUpWithBankTransferModel> topUpWithBankTransferModelObj =
      TopUpWithBankTransferModel().obs;
  RxBool isLoading = false.obs;
  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  Rx<VirtualBank> virtualBankModel = VirtualBank().obs;
  @override
  void onInit() {
    super.onInit();
    fetchVirtualAccount();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    topUpWithBankTransferModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    topUpWithBankTransferModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    topUpWithBankTransferModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    topUpWithBankTransferModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    topUpWithBankTransferModelObj.value.dropdownItemList2.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    topUpWithBankTransferModelObj.value.dropdownItemList2.refresh();
  }

  Future<void> fetchVirtualAccount() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.virtualAccount);
      var token = await getAccessToken();

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

     

      
      virtualBankModel = VirtualBank.fromJson(jsonDecode(response.body)).obs;
    

      if (response.statusCode == 200) {
        isLoading.value = false;
      } else {
       
        isLoading.value = false;
      }
    } catch (e) {
   
      isLoading.value = false;
    }
  }
}

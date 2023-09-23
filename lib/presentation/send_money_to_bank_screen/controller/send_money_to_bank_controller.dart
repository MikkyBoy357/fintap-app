import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/send_money_to_bank_screen/models/send_money_to_bank_model.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';

import '../models/bank_accounts_model.dart';
import 'package:http/http.dart' as http;

import '../models/banks_model.dart';
import '../models/delete_account_response_model.dart';
import '../models/add_bank_response_model.dart';
import '../models/resolve_account_response_model.dart';

class SendMoneyToBankController extends GetxController {
  TextEditingController accountNumberController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isBankSelected = false.obs;
  RxBool isBankResolving = false.obs;

  RxBool isAccountNumberValid = false.obs;

  Rx<BankAccountResponseModel> bankAccountModel =
      BankAccountResponseModel().obs;

  Rx<AddAccountResponseModel> addBankAccountModel =
      AddAccountResponseModel().obs;

  Rx<UpdateAccountResponseModel> updateBankAccountResponseModel =
      UpdateAccountResponseModel().obs;

  Rx<DeleteAccountResponseModel> deleteBankAccountModel =
      DeleteAccountResponseModel().obs;

  Rx<ResolveAccountResponseModel> resolveBankAccountModel =
      ResolveAccountResponseModel().obs;

  Rx<BanksModel> banksModel = BanksModel().obs;

  var selectedBank = BanksData(name: " ", code: '0').obs;

  void selectBank(BanksData data) {
    selectedBank.value = data;
    isBankSelected.value = true;

    print(selectedBank.value.name);
  }

  Rx<SendMoneyToBankModel> sendMoneyToBankModelObj = SendMoneyToBankModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    accountNumberController.dispose();
  }

  @override
  void onInit() {
    fetchBeneficairiesServices();
    super.onInit();
  }

  void clearAddAccountControllers() {
    isAccountNumberValid.value = false;
    accountNumberController.clear();
  }

  Future<void> fetchBeneficairiesServices() async {
    try {
      isLoading.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.beneficiaries);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      bankAccountModel =
          BankAccountResponseModel.fromJson(jsonDecode(response.body)).obs;

      print(bankAccountModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(bankAccountModel.toString());
        isLoading.value = false;
      } else {
        print('true status error');

        isLoading.value = false;
      }
    } on SocketException catch (_) {
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException catch (_) {
      Get.snackbar(
        "Error",
        "Connection Time out",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      isLoading.value = false;
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }

  Future<void> fetchBankListServices() async {
    try {
      isLoading.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.banks);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      banksModel = BanksModel.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200) {
        print('true');
        isLoading.value = false;
      } else {
        print('true status error');

        isLoading.value = false;
      }
    } on SocketException catch (_) {
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException catch (_) {
      Get.snackbar(
        "Error",
        "Connection Time out",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      isLoading.value = false;
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }

  Future<void> deleteBeneficairyService(String beneficiaryId) async {
    try {
      isLoading.value = true;
      String token = await getAccessToken();
      var url = Uri.parse("${ApiEndpoints.beneficiaries}/$beneficiaryId");

      final response = await http.delete(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      deleteBankAccountModel =
          DeleteAccountResponseModel.fromJson(jsonDecode(response.body)).obs;

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(deleteBankAccountModel.toString());
        isLoading.value = false;
        fetchBeneficairiesServices();

        Get.snackbar(
          "Success",
          deleteBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        print('true status error');
        Get.snackbar(
          "Error",
          deleteBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );

        isLoading.value = false;
      }
    } on SocketException catch (_) {
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException catch (_) {
      isLoading.value = false;

      Get.snackbar(
        "Error",
        "Connection Time out",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      isLoading.value = false;
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }

  Future<void> resolveAccountService() async {
    try {
      isBankResolving.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.resolveAccount);

      Map body = {
        "account_number": accountNumberController.text,
        "bank_code": selectedBank.value.code,
      };

      final response = await http.post(
        url,
        body: jsonEncode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      resolveBankAccountModel =
          ResolveAccountResponseModel.fromJson(jsonDecode(response.body)).obs;

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(resolveBankAccountModel.toString());
        isBankResolving.value = false;
        isAccountNumberValid.value = true;
        fetchBeneficairiesServices();

        Get.snackbar(
          "Success",
          resolveBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        print('true status error');
        Get.snackbar(
          "Error",
          resolveBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );

        isBankResolving.value = false;
      }
    } on SocketException catch (_) {
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException catch (_) {
      Get.snackbar(
        "Error",
        "Connection Time out",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      isBankResolving.value = false;
    } catch (e) {
      print('true catc error $e');

      isBankResolving.value = false;
    }
  }

  Future<void> addAccountService() async {
    try {
      isLoading.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.beneficiaries);

      Map body = {
        "bank_name": selectedBank.value.name,
        "account_name": resolveBankAccountModel.value.data!.accountName,
        "account_number": resolveBankAccountModel.value.data!.accountNumber,
        "bank_code": selectedBank.value.code,
      };

      final response = await http.post(
        url,
        body: jsonEncode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      addBankAccountModel =
          AddAccountResponseModel.fromJson(jsonDecode(response.body)).obs;

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(addBankAccountModel.toString());
        isLoading.value = false;

        fetchBeneficairiesServices();

        Get.snackbar(
          "Success",
          addBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        print('true status error');
        Get.snackbar(
          "Error",
          resolveBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );

        isLoading.value = false;
      }
    } on SocketException catch (_) {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException catch (_) {
      Get.snackbar(
        "Error",
        "Connection Time out",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      isLoading.value = false;
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }
  Future<void> updateAccountService(String id) async {
    try {
      isLoading.value = true;
      String token = await getAccessToken();
      var url = Uri.parse("${ApiEndpoints.beneficiaries}/$id");

      Map body = {
        "bank_name": selectedBank.value.name,
        "account_name": resolveBankAccountModel.value.data!.accountName,
        "account_number": resolveBankAccountModel.value.data!.accountNumber,
        "bank_code": selectedBank.value.code,
      };

      final response = await http.patch(
        url,
        body: jsonEncode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      updateBankAccountResponseModel =
          UpdateAccountResponseModel.fromJson(jsonDecode(response.body)).obs;

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(addBankAccountModel.toString());
        isLoading.value = false;

        fetchBeneficairiesServices();

        Get.snackbar(
          "Success",
          addBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        print('true status error');
        Get.snackbar(
          "Error",
          resolveBankAccountModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );

        isLoading.value = false;
      }
    } on SocketException catch (_) {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException catch (_) {
      Get.snackbar(
        "Error",
        "Connection Time out",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      isLoading.value = false;
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    sendMoneyToBankModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    sendMoneyToBankModelObj.value.dropdownItemList.refresh();
  }
}

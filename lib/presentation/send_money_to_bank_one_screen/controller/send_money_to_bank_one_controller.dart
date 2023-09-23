import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/send_money_to_bank_response_model.dart';

class SendMoneyToBankOneController extends GetxController {
  TextEditingController amountController = TextEditingController();

  RxBool isLoading = false.obs;

  Rx<SendMoneyToBankResponseModel> sendMoneyToBankResponseModel =
      SendMoneyToBankResponseModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> walletWithdrawal(String beneficiaryId) async {
    isLoading.value = true;
    try {
      String token = await getAccessToken();

      Map body = {
        "beneficiaryid": beneficiaryId,
        "amount": amountController.text
      };

      final response = await http.post(
        Uri.parse(ApiEndpoints.withdrawToBank),
        body: jsonEncode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );
      print(jsonDecode(response.body));

      sendMoneyToBankResponseModel =
          SendMoneyToBankResponseModel.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200 &&
          sendMoneyToBankResponseModel.value.status!) {
        isLoading.value = false;

        Get.offNamed(AppRoutes.sendMoneyToBankThreeScreen,
            arguments: sendMoneyToBankResponseModel.value.data!);
        print(response.toString());
      } else {
        isLoading.value = false;

        Get.snackbar(
          "Error".tr,
          sendMoneyToBankResponseModel.value.message!,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
        );
      }
    } on SocketException {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "No internet connection",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
      );
    } on TimeoutException {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Connection timed out",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
      );
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
}

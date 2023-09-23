import 'dart:async';
import 'dart:io';

import 'package:fintap/core/app_export.dart';

import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/send_money_input_response_model.dart';

class SendMoneyToFriendInputController extends GetxController {
  TextEditingController amountController = TextEditingController();

  RxBool isLoading = false.obs;
  Rx<SendMoneyInputResponseModel> sendMoneyToFriendInputModel =
      SendMoneyInputResponseModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> walletTransfer(String receipientId) async {
    isLoading.value = true;
    try {
      String token = await getAccessToken();

      Map body = {"recipientid": receipientId, "amount": amountController.text};

      final response = await http.post(
        Uri.parse(ApiEndpoints.walletTransfer),
        body: jsonEncode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );
      print(jsonDecode(response.body));

      sendMoneyToFriendInputModel =
          SendMoneyInputResponseModel.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200 &&
          sendMoneyToFriendInputModel.value.status!) {
        isLoading.value = false;
        Get.offNamed(AppRoutes.sendMoneyToFriendSuccessScreen,
            arguments: sendMoneyToFriendInputModel.value.data!);
        print(response.toString());
      } else {
        isLoading.value = false;

        Get.snackbar(
          "Error".tr,
          sendMoneyToFriendInputModel.value.message!,
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

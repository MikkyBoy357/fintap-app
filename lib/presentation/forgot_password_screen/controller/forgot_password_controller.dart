import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../verification_screen/verification_screen.dart';
import '../models/forgot_password_model.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController emailInputController = TextEditingController();

  // Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  RxBool isLoading = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailInputController.dispose();
  }

  Future<void> forgotPassword() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.forgetPassword);

      Map body = {
        'email': emailInputController.text,
      };

      final response = await http.post(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(body),
      );

      var data = ForgotPasswordModel.fromJson(jsonDecode(response.body));

      if (response.statusCode == 200) {
        // If the server did return a 201 CREATED response,
        // then parse the JSON.
        isLoading.value = false;
        Get.snackbar(
          "Success",
          data.message,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.to(VerificationScreen(), arguments: data.resetToken);
      } else {
        isLoading.value = false;
        Get.snackbar(
          "Error",
          data.message,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } on SocketException {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Connection Timed Out",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } catch (e) {
      isLoading.value = false;
    }
  }
}

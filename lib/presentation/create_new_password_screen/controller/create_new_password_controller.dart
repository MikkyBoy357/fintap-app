import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/create_new_password_screen/models/create_new_password_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';

class CreateNewPasswordController extends GetxController {
  TextEditingController otpController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  // Rx<CreateNewPasswordModel> createNewPasswordModelObj =
  //     CreateNewPasswordModel().obs;

  RxBool isLoading = false.obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  // final String token = Get.arguments;

  // RxString token = Get.arguments.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    otpController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  Future<void> resetPassword(String token) async {
    try {
      isLoading.value = true;

      var url = Uri.parse(ApiEndpoints.resetPassword);

      Map body = {
        'otp': otpController.text,
        'token': token,
        'password': passwordController.text,
      };

      final response = await http.post(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(body),
      );

      var data = CreateNewPasswordModel.fromJson(jsonDecode(response.body));

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
        Get.offNamed(AppRoutes.signInWithEmailScreen);
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

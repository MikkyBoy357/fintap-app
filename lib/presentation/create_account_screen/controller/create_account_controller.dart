import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/create_account_screen/models/create_account_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';

class CreateAccountController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController refCodeController = TextEditingController();


  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('234').obs;

  Rx<bool> isLoading = false.obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }

  Future<void> registerWithEmail() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.register);

      Map body = {
        'firstname': firstNameController.text,
        'lastname': lastNameController.text,
        'email': emailController.text,
        'refcode': refCodeController.text,
        'password': passwordController.text,
        'confirm_password': confirmPasswordController.text,
        'phone': phoneNumberController.text,
      };

      

      final response = await http.post(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(body),
      );

      var data = CreateAccountModel.fromJson(jsonDecode(response.body));
   

      if (response.statusCode == 201 || response.statusCode == 200) {
        isLoading.value = false;
        // If the server did return a 201 CREATED response,
        // then parse the JSON.
        // Get.offNamed(AppRoutes.enterOtpScreen);
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

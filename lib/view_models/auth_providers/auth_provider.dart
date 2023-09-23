import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../core/utils/api_endpoints.dart';
import '../../core/utils/shared_data.dart';
import '../../presentation/sign_in_with_email_screen/models/sign_in_with_email_model.dart';

class AuthProvider extends ChangeNotifier {
  // Login
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool isShowPassword = false;

  Future<void> loginWithEmail() async {
    try {
      isLoading = true;
      var url = Uri.parse(ApiEndpoints.login);

      Map body = {
        'email': emailController.text,
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

      var data = SignInWithEmailModel.fromJson(jsonDecode(response.body));

      if (response.statusCode == 201 || response.statusCode == 200) {
        // If the server did return a 201 CREATED response,
        // then parse the JSON.
        await setAccessToken(data.accessToken!);
        await setRefreshToken(data.refreshToken!);
        await isLoggedIn(true);

        isLoading = false;

        Get.snackbar(
          "Success",
          data.message,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.offAllNamed(AppRoutes.homeContainerScreen);
      } else {
        isLoading = false;

        Get.snackbar(
          "Error",
          data.message,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } on SocketException {
      isLoading = false;

      Get.snackbar(
        "Error",
        "No Internet Connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } on TimeoutException {
      isLoading = false;

      Get.snackbar(
        "Error",
        "Connection Timed Out",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } catch (e) {
      isLoading = false;
    }
  }
}

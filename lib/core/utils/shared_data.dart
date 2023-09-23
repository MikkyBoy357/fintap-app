import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/api_endpoints.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../data/models/ref_token_response.dart';

Future<bool> setAccessToken(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('access_token', value);
}

// fetch token
Future getAccessToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('access_token');
}

Future<bool> setRefreshToken(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('refresh_token', value);
}

// fetch refreshtoken
Future getRefreshToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('refresh_token');
}

// set user credentials
Future setUser(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('user', value);
}

// fetch user credentials
Future getUser() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('user');
}

Future enableFingerPrint(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setBool('fingerPrintEnabled', value);
}

Future<bool> getFingerPrint() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('fingerPrintEnabled') ?? false;
}

Future<bool> isLoggedIn(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setBool('isLoggedIn', value);
}

Future<bool> getLoggedInStatus() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isLoggedIn') ?? false;
}

Future<bool> setFirstSeen(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setBool('firstSeen', value);
}

Future<bool> getFirstSeen() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('firstSeen') ?? false;
}

Future clearUserData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
  await setFirstSeen(true);
}

Future<String> refreshAccessToken() async {
  try {
    String token = await getAccessToken();
    String refreshToken = await getRefreshToken();
    final response = await http.get(
      Uri.parse(ApiEndpoints.refreshToken),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        'refreshToken': refreshToken
      },
    );

    var data = RefreshTokenResponse.fromJson(jsonDecode(response.body));

    if (response.statusCode == 200 || response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.

      await setAccessToken(data.accessToken!);
      await setRefreshToken(data.refreshToken!);
      await isLoggedIn(true);

      return data.accessToken!;
    } if (response.statusCode == 401) {
      Get.snackbar(
        "Error",
        "Unauthorized",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      return "401";
    }
    
    else {
      Get.snackbar(
        "Error",
        data.message!,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      return "";
    }
  } on SocketException {
    Get.snackbar(
      "Error",
      "No Internet Connection",
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  } on TimeoutException {
    Get.snackbar(
      "Error",
      "Connection Timed Out",
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  } catch (e, s) {
    print("Stack Trace: $s");
    print('Error refreshing access token: $e');
  }
  return '';
}

Map<String, String> requestHeadersWithOutBearer = {
  'Content-type': 'application/json',
  'Accept': 'application/json',
};

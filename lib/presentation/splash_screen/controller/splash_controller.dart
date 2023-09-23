import 'dart:developer';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/splash_screen/models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../../../core/utils/shared_data.dart';
import '../../sign_in_with_local_auth/sign_in_with_local_auth.dart';

class SplashController extends GetxController {
  final LocalAuthentication _localAuth = LocalAuthentication();
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  RxBool isInternetAvailable = false.obs;

  Future<bool> isInternetConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected::  Result: $result');
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      print('not connected');
      return false;
    }
  }

  @override
  void onInit() {
    isInternetConnected().then((value) {
      print("isInternetConnected : $value");
      isInternetAvailable.value = value;
    });

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      checkFirstSeen();
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  checkFirstSeen() async {
    bool _seen = await getFirstSeen();
    bool _isLogin = await getLoggedInStatus();
    final isBiometricAvailable = await _localAuth.canCheckBiometrics;
    if (_seen) {
      if (_isLogin) {
        if (isInternetAvailable.value) {
          if (isBiometricAvailable) {
            log("isBiometricAvailable : $isBiometricAvailable");
            //   Get.offAll(SignInWithLocalAuthScreen());
            // } else {
            Get.offAllNamed(AppRoutes.homeContainerScreen);
          }
        } else {
          Get.rawSnackbar(
            icon: Icon(
              Icons.wifi_off_outlined,
              color: Colors.white,
            ),
            message: "No Internet Connection",
            duration: Duration(minutes: 2),
            backgroundColor: Colors.red,
          );
        }
      } else {
        Get.offAllNamed(AppRoutes.signInWithEmailScreen);
      }
    } else {
      Get.offAllNamed(AppRoutes.onboardingOneScreen);
    }
  }
}

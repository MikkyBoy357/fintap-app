import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:fintap/core/app_export.dart';

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/account_model.dart';
import 'package:http/http.dart' as http;

import '../models/home_model.dart';
import '../models/transaction_model.dart';
// import 'package:new_version_plus/new_version_plus.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;

  RxBool isLoading = false.obs;

  RxBool showBalance = false.obs;
  RxBool isTransactionLoading = false.obs;

  // Rx<AccountOneModel> accountOneModelObj;

  Rx<Account> accountModel = Account().obs;
  Rx<TransactionModel> transactionModel = TransactionModel().obs;

  @override
  void onInit() async {
    _refreshAccessToken(); // Call initially
    Timer.periodic(Duration(seconds: 270), (_) {
      _refreshAccessToken();
    });
    fetchUserProfile();
    fetchUserTransactions();

    // final newVersion = NewVersionPlus(
    //   iOSId: 'app.fintap.com',
    //   androidId: 'com.fintap.app',
    // );

    // newVersion.showAlertIfNecessary(context: Get.context!);

    // final status = await newVersion.getVersionStatus();

    // if (status != null) {
    //   print('We can update the app');
    //   newVersion.showUpdateDialog(
    //       context: Get.context!,
    //       versionStatus: status,
    //       dialogTitle: "Update Available",
    //       dialogText:
    //           "A new version of the app is available. Please update it now.");
    // }

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    // contentController.dispose();
  }

  void toggleVisibility() {
    showBalance.value = !showBalance.value;
    log(showBalance.value.toString());
  }

  Future<void> _refreshAccessToken() async {
    final newAccessToken = await refreshAccessToken();
    if (newAccessToken.isNotEmpty) {
      print("New Token refreshed :");
      // Do something with the new access token, e.g., update your app state
    }

    if (newAccessToken == "401") {
      print("401");
      // Do something else, e.g., logout user or remove values from shared preferences
      Get.offAllNamed(AppRoutes.signInWithEmailScreen);
    }
    // else {
    //   print("Something went wrong");
    // }
  }

  Future<void> fetchUserProfile() async {
    try {
      isLoading.value = true;
      await _refreshAccessToken();
      var url = Uri.parse(ApiEndpoints.profile);
      var token = await getAccessToken();

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      // accountModel = Account.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200) {
        accountModel = Account.fromJson(jsonDecode(response.body)).obs;

        isLoading.value = false;
      } else {
        isLoading.value = false;
      }
    } catch (e, s) {
      print("Stact Trace: $s");
      print("Error: $e");
      isLoading.value = false;
    }
  }

  Future<void> fetchUserTransactions() async {
    try {
      isTransactionLoading.value = true;
      await _refreshAccessToken();

      var url = Uri.parse(ApiEndpoints.getTransactions);
      var token = await getAccessToken();

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        transactionModel =
            TransactionModel.fromJson(jsonDecode(response.body)).obs;

     
        isTransactionLoading.value = false;
      } else {
        isTransactionLoading.value = false;
      }
    } on SocketException {
      Get.snackbar("Error", "No Internet Connection");
    } on TimeoutException {
      Get.snackbar("Error", "Connection Timeout");
    } catch (e, s) {
      print("Stack Trace For Transactions: $s");
      isTransactionLoading.value = false;
    }
  }
}

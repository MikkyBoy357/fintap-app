import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/wallet_two_screen/models/wallet_two_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/investment_details_model.dart';
import 'package:http/http.dart' as http;

import '../models/withdraw_investment_model.dart';

class WalletTwoController extends GetxController {
  Rx<WalletTwoModel> walletTwoModelObj = WalletTwoModel().obs;

  RxBool isLoading = false.obs;
  RxBool enableWithdraw = false.obs;

  Rx<WithdrawInvestmentResponse> withdrawInvestmentServicesModel =
      WithdrawInvestmentResponse().obs;
  Rx<InvestmentDetailsModel> investmentDetailsServicesModel =
      InvestmentDetailsModel().obs;

  String format = "dd-MM-yyyy HH:mm:ss";
  Rx<String> duration = "".obs;
  Rx<double> progressVal = 0.0.obs;
  Rx<String> progressPer = "".obs;
  Rx<String> daysLeft = "".obs;

  @override
  void onInit() {
    fetchAnInvestmentServices();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchAnInvestmentServices() async {
    isLoading.value = true;

    try {
      String token = await getAccessToken();
      var url = Uri.parse("${ApiEndpoints.getInvestments}/${Get.arguments}");

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      investmentDetailsServicesModel =
          InvestmentDetailsModel.fromJson(jsonDecode(response.body)).obs;

      print(investmentDetailsServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200 &&
          investmentDetailsServicesModel.value.status == true) {
        Data data = investmentDetailsServicesModel.value.data!.first;
        DateTime startDate =
            DateFormat(format).parse(data.extra!.createDate!.toString());
        DateTime dueDate =
            DateFormat(format).parse(data.extra!.dueDate!.toString());

        DateTime now = DateTime.now();
        Duration totalDuration = dueDate.difference(startDate);
        Duration progressDuration = now.difference(startDate);

        final progress =
            (progressDuration.inMilliseconds / totalDuration.inMilliseconds)
                .clamp(0.0, 1.0);
        final progressPercentage = (progress * 100).toStringAsFixed(2);

        progressPer.value = progressPercentage;

        if (progressPercentage == "100.00") {
          enableWithdraw.value = true;
        }
        progressVal.value = progress;

        duration.value =
            "Day ${progressDuration.inDays} of ${totalDuration.inDays}";

        daysLeft.value =
            "${totalDuration.inDays - progressDuration.inDays} days left";
        isLoading.value = false;
        print('true');
        print(investmentDetailsServicesModel.toString());
      } else {
        print('true status error: ${response.statusCode}');

        isLoading.value = false;
      }
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }

  Future<void> withdrawInvestmentServices(String reference) async {
    isLoading.value = true;

    try {
      String token = await getAccessToken();
      var url = Uri.parse("${ApiEndpoints.withdrawInvestment}$reference");

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      withdrawInvestmentServicesModel =
          WithdrawInvestmentResponse.fromJson(jsonDecode(response.body)).obs;

      print(withdrawInvestmentServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200 &&
          withdrawInvestmentServicesModel.value.success == true) {
        Get.snackbar(
          "Success",
          withdrawInvestmentServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        isLoading.value = false;
        print('true');
        print(withdrawInvestmentServicesModel.toString());
      } else {
        print('true status error: ${response.statusCode}');
        Get.snackbar(
          "Error",
          withdrawInvestmentServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        isLoading.value = false;
      }
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }
}

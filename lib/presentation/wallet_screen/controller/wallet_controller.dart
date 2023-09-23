import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/money_formater.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/Investment_package_model.dart';
import '../models/available_investment_model.dart';
import '../models/create_investment_response.dart';

class WalletController extends GetxController {
  TextEditingController returnsController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isBillProcessing = false.obs;
  RxBool isLoadingPackage = false.obs;
  RxBool showPackage = false.obs;
  RxBool showReturnsField = false.obs;

  RxString amount = ''.obs;
  RxString returns = ''.obs;

  Rx<AvailableInvestments> investmentServicesModel = AvailableInvestments().obs;
  // Rx<DataResponseModel> dataResponseServicesModel = DataResponseModel().obs;
  // var mobileData = <Data>[].obs;

  Rx<InvestmentPackage> investmentPackageServicesModel =
      InvestmentPackage().obs;
  Rx<CreateInvestmentResponse> createInvestmentServicesModel =
      CreateInvestmentResponse().obs;
  // var mobileDataPackage = <Variations>[].obs;

  var selectedData =
      InvestmentData(serviceId: "Select Investment", name: '').obs;

  var selectedPackage =
      Variations(variationCode: "Select Package", name: '0').obs;

  void selectInvestment(InvestmentData data) {
    selectedData.value = data;

    fetchInvestmentPackageServices();

    print(selectedData.value.serviceId);
  }

  void selectInvestmentPackage(Variations package) {
    selectedPackage.value = package;

    // fetchDataPackageServices();
    // amount.value = selectedPackage.value.variationAmount!;
    showReturnsField.value = true;
    print(selectedPackage.value.percentage);
  }

  void calculateExpectedReturns() {
    num value = double.tryParse(amountController.text) ?? 0.0;
    num calculatedReturns =
        (double.tryParse(selectedPackage.value.percentage.toString())! / 100) *
            value;

    // Assuming 10% rate of return

    print("Value: $calculatedReturns");
    final expectedReturns = value + calculatedReturns;
    returns.value = moneyFormat().format(expectedReturns);
  }

  @override
  void onInit() {
    super.onInit();
    fetchAvailableInvestmentServices();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    returnsController.dispose();
    amountController.dispose();
  }

  Future<void> fetchAvailableInvestmentServices() async {
    isLoading.value = true;
    try {
      var url = Uri.parse(ApiEndpoints.getInvestmentPlans);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      investmentServicesModel =
          AvailableInvestments.fromJson(jsonDecode(response.body)).obs;

      print(investmentServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200 &&
          investmentServicesModel.value.status == true) {
        isLoading.value = false;
        print('true');
        print(investmentServicesModel.toString());
      } else {
        print('true status error: ${response.statusCode}');

        isLoading.value = false;
      }
    } catch (e, s) {
      print('true catc error $e :: $s');

      isLoading.value = false;
    }
  }

  Future<void> fetchInvestmentPackageServices() async {
    try {
      isLoadingPackage.value = true;
      var url = Uri.parse(
          "${ApiEndpoints.getInvestmentPlans}/${selectedData.value.serviceId}");
      print(url);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      investmentPackageServicesModel =
          InvestmentPackage.fromJson(jsonDecode(response.body)).obs;

      print(investmentPackageServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        // print('true');
        print(investmentPackageServicesModel.toString());
        isLoadingPackage.value = false;
        showPackage.value = true;
      } else {
        // print('true status error');

        isLoadingPackage.value = false;
      }
    } catch (e, s) {
      // print('true catc stack $s');
      // print('true catc error $e');

      isLoadingPackage.value = false;
    }
  }

  Future<void> createInvestmentService() async {
    try {
      isBillProcessing.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.createInvestment);

      Map body = {
        'serviceID': selectedData.value.serviceId!,
        'variation_code': selectedPackage.value.variationCode,
        'amount': amountController.text,
      };
      print(body);

      final response = await http.post(
        url,
        body: jsonEncode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      createInvestmentServicesModel =
          CreateInvestmentResponse.fromJson(jsonDecode(response.body)).obs;

      print(createInvestmentServicesModel.toString());

      if (createInvestmentServicesModel.value.status == false) {
        Get.snackbar(
          "Error",
          createInvestmentServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      if (response.statusCode == 200 &&
          createInvestmentServicesModel.value.status == true) {
        print('true');
        print(createInvestmentServicesModel.toString());
        isBillProcessing.value = false;
        Get.snackbar(
          "Success",
          "Investment created successfully",
          // createInvestmentServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.back();
        Get.off(AppRoutes.walletOnePage);
      } else {
        // print('true status error');

        isBillProcessing.value = false;

        Get.snackbar(
          "Error",
          createInvestmentServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e, s) {
      // print('true catc error $e :: $s');

      isBillProcessing.value = false;
    }
  }
}

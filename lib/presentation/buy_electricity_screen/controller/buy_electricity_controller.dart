import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../electricity_response_screen.dart';
import '../models/electricity_model.dart';
import '../models/electricity_package_model.dart';
import '../models/electricity_response_model.dart';
import '../models/verify_merchant_model.dart';

class BuyElectricityController extends GetxController {
  TextEditingController amountController = TextEditingController();
  TextEditingController meterNumberController = TextEditingController();
  // List<BuyDataModel> accountModelObj = BuyDataModel().obs;

  RxBool isLoading = false.obs;
  RxBool isBillProcessing = false.obs;
  RxBool isMerchantProcessing = false.obs;
  RxBool isLoadingPackage = false.obs;
  RxBool showPackage = false.obs;
  RxBool showMeterField = false.obs;
  RxBool merchantHasError = false.obs;
  RxBool showMerchantSection = false.obs;

  Rx<BuyElectricityModel> electricityServicesModel = BuyElectricityModel().obs;
  var electricityData = <Data>[].obs;
  Rx<BuyElectricityResponseModel> buyElectricityServicesModel =
      BuyElectricityResponseModel().obs;

  Rx<ElectricityPackageModel> electricityPackageServicesModel =
      ElectricityPackageModel().obs;

  Rx<VerifyMerchantModel> verifyMerchantServicesModel =
      VerifyMerchantModel().obs;

  var mobileDataPackage = <Variations>[].obs;

  var selectedElectricity =
      Data(serviceId: "Select Biller", minimiumAmount: '0').obs;

  var selectedPackage =
      Variations(variationCode: "Select Package", name: '0').obs;

  void selectBiller(Data data) {
    selectedElectricity.value = data;
    merchantHasError.value = false;
    fetchElectricityPackageServices();

    print(selectedElectricity.value.serviceId);
  }

  void selectPackage(Variations package) {
    selectedPackage.value = package;

    showMeterField.value = true;

    print(selectedPackage.value.variationCode);
  }

  @override
  void onInit() {
    super.onInit();
    fetchElectricityServices();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchElectricityServices() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.electricityServices);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      electricityServicesModel =
          BuyElectricityModel.fromJson(jsonDecode(response.body)).obs;

      print(electricityServicesModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(electricityServicesModel.toString());
        isLoading.value = false;
      } else {
        print('true status error');

        isLoading.value = false;
      }
    } catch (e) {
      print('true catc error $e');

      isLoading.value = false;
    }
  }

  Future<void> fetchElectricityPackageServices() async {
    try {
      isLoadingPackage.value = true;
      showMerchantSection.value = false;

      var url = Uri.parse(
          "${ApiEndpoints.electricityServices}/${selectedElectricity.value.serviceId}");
      print(url);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      electricityPackageServicesModel =
          ElectricityPackageModel.fromJson(jsonDecode(response.body)).obs;

      print(electricityPackageServicesModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200 &&
          electricityPackageServicesModel.value.status == true) {
        print('true');
        print(electricityPackageServicesModel.toString());
        isLoadingPackage.value = false;
        showPackage.value = true;
      } else {
        print('true status error');

        isLoadingPackage.value = false;
      }
    } catch (e) {
      print('true catc error $e');

      isLoadingPackage.value = false;
    }
  }

  Future<void> verifyMerchantService() async {
    try {
      isMerchantProcessing.value = true;
      showMerchantSection.value = false;

      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.verifyMerchant);

      Map body = {
        'serviceID': selectedElectricity.value.serviceId!,
        'variation_code': selectedPackage.value.variationCode,
        'billersCode': meterNumberController.text,
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

      verifyMerchantServicesModel =
          VerifyMerchantModel.fromJson(jsonDecode(response.body)).obs;

      print(verifyMerchantServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (verifyMerchantServicesModel.value.status == false) {
        isMerchantProcessing.value = false;

        Get.snackbar(
          "Error",
          verifyMerchantServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else if (response.statusCode == 200 &&
          verifyMerchantServicesModel.value.status == true) {
        print('true');
        print(verifyMerchantServicesModel.toString());
        isMerchantProcessing.value = false;
        showMerchantSection.value = true;
        verifyMerchantServicesModel.value.data == null
            ? merchantHasError.value = true
            : merchantHasError.value = false;
        Get.snackbar(
          "Success",
          verifyMerchantServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        print('true status error');

        isMerchantProcessing.value = false;

        Get.snackbar(
          "Error",
          verifyMerchantServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print('true catc error $e');

      isMerchantProcessing.value = false;
    }
  }

  Future<void> buyElectricityService() async {
    try {
      isBillProcessing.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.buyElectricity);

      Map body = {
        'serviceID': selectedElectricity.value.serviceId!,
        'billersCode': meterNumberController.text,
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

      buyElectricityServicesModel =
          BuyElectricityResponseModel.fromJson(jsonDecode(response.body)).obs;

      print(buyElectricityServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (buyElectricityServicesModel.value.status == false) {
        Get.snackbar(
          "Error",
          buyElectricityServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      if (response.statusCode == 200) {
        print('true');
        print(buyElectricityServicesModel.toString());
        isBillProcessing.value = false;
        Get.to(() => ElectricityResponseScreen(),
            arguments: buyElectricityServicesModel.value.data!);
      } else {
        print('true status error');

        isBillProcessing.value = false;

        Get.snackbar(
          "Error",
          buyElectricityServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print('true catc error $e');

      isBillProcessing.value = false;
    }
  }
}

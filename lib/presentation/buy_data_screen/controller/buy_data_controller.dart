import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../data_response_screen.dart';
import '../models/data_model.dart';
import '../models/data_package_model.dart';
import '../models/data_response_model.dart';

class BuyDataController extends GetxController {
  TextEditingController amountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  // List<BuyDataModel> accountModelObj = BuyDataModel().obs;

  RxBool isLoading = false.obs;
  RxBool isBillProcessing = false.obs;
  RxBool isLoadingPackage = false.obs;
  RxBool showPackage = false.obs;

  RxString amount = ''.obs;

  Rx<BuyDataModel> dataServicesModel = BuyDataModel().obs;
  Rx<DataResponseModel> dataResponseServicesModel = DataResponseModel().obs;
  var mobileData = <Data>[].obs;

  Rx<DataPackageModel> dataPackageServicesModel = DataPackageModel().obs;
  var mobileDataPackage = <Variations>[].obs;

  var selectedData = Data(serviceId: "Select Biller", minimiumAmount: '0').obs;

  var selectedPackage =
      Variations(variationCode: "Select Package", name: '0').obs;

  void selectBiller(Data data) {
    selectedData.value = data;

    fetchDataPackageServices();

    print(selectedData.value.serviceId);
  }

  void selectPackage(Variations package) {
    selectedPackage.value = package;

    // fetchDataPackageServices();
    amount.value = selectedPackage.value.variationAmount!;

    print(selectedData.value.serviceId);
  }

  @override
  void onInit() {
    super.onInit();
    fetchDataServices();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchDataServices() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.dataServices);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      dataServicesModel = BuyDataModel.fromJson(jsonDecode(response.body)).obs;

      print(dataServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(dataServicesModel.toString());
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

  Future<void> fetchDataPackageServices() async {
    try {
      isLoadingPackage.value = true;
      var url = Uri.parse(
          "${ApiEndpoints.dataServices}/${selectedData.value.serviceId}");
      print(url);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      dataPackageServicesModel =
          DataPackageModel.fromJson(jsonDecode(response.body)).obs;

      print(dataPackageServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(dataPackageServicesModel.toString());
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

  Future<void> buyDataService() async {
    try {
      isBillProcessing.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.buyData);

      Map body = {
        'serviceID': selectedData.value.serviceId!,
        'variation_code': selectedPackage.value.variationCode,
        'phone': phoneNumberController.text,
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

      dataResponseServicesModel =
          DataResponseModel.fromJson(jsonDecode(response.body)).obs;

      print(dataServicesModel.toString());

      if (dataResponseServicesModel.value.status == false) {
        Get.snackbar(
          "Error",
          dataResponseServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      if (response.statusCode == 200 &&
          dataResponseServicesModel.value.status == true) {
        print('true');
        print(dataResponseServicesModel.toString());
        isBillProcessing.value = false;
        Get.to(() => DataResponseScreen(),
            arguments: dataResponseServicesModel.value.data!);
      } else {
        print('true status error');

        isBillProcessing.value = false;

        Get.snackbar(
          "Error",
          dataResponseServicesModel.value.message!,
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

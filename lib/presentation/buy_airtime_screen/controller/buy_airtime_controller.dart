import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../airtime_response_screen.dart';
import '../models/airtime_model.dart';
import '../models/airtime_response_model.dart';

class BuyAirtimeController extends GetxController {
  TextEditingController amountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  // List<AirtimeModel> accountModelObj = AirtimeModel().obs;

  RxBool isLoading = false.obs;
  RxBool isBillProcessing = false.obs;

  Rx<AirtimeModel> airtimeServicesModel = AirtimeModel().obs;
  Rx<BuyAirtimeResponseModel> airtimeResponseServicesModel =
      BuyAirtimeResponseModel().obs;
  var airtimeData = <AirtimeData>[].obs;

  var selectedAirtimeData =
      AirtimeData(serviceId: "Select Biller", minimiumAmount: '0').obs;

  void selectBiller(AirtimeData airtime) {
    selectedAirtimeData.value = airtime;

    print(selectedAirtimeData.value.serviceId);
  }

  @override
  void onInit() {
    super.onInit();
    fetchAirtimeServices();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchAirtimeServices() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.airtimeServices);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      airtimeServicesModel =
          AirtimeModel.fromJson(jsonDecode(response.body)).obs;

      print(airtimeServicesModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(airtimeServicesModel.toString());
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

  Future<void> buyAirtimeService() async {
    try {
      isBillProcessing.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.buyAirtime);

      Map body = {
        'serviceID': selectedAirtimeData.value.serviceId!,
        'amount': amountController.text,
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

      airtimeResponseServicesModel =
          BuyAirtimeResponseModel.fromJson(jsonDecode(response.body)).obs;

      print(airtimeResponseServicesModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (airtimeResponseServicesModel.value.status == false) {
        Get.snackbar(
          "Error",
          airtimeResponseServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      if (response.statusCode == 200 &&
          airtimeResponseServicesModel.value.status == true) {
        print('true');
        print(airtimeResponseServicesModel.toString());
        isBillProcessing.value = false;
        Get.to(() => AirtimeResponseScreen(),
            arguments: airtimeResponseServicesModel.value.data!);
      } else {
        print('true status error');

        isBillProcessing.value = false;

        Get.snackbar(
          "Error",
          airtimeResponseServicesModel.value.message!,
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

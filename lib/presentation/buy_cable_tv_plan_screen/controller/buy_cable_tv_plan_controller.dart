import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../cable_tv_response_screen.dart';
import '../models/cable_tv_model.dart';
import '../models/cable_tv_package_model.dart';
import '../models/cable_tv_response_model.dart';
import '../models/verify_biller.dart';

class BuyCableTVPlanController extends GetxController {
  TextEditingController amountController = TextEditingController();
  TextEditingController smartCardNumberController = TextEditingController();
  // List<BuyDataModel> accountModelObj = BuyDataModel().obs;

  RxBool isLoading = false.obs;
  RxBool isMerchantProcessing = false.obs;
  RxBool isBillProcessing = false.obs;
  RxBool isLoadingPackage = false.obs;
  RxBool showMerchantSection = false.obs;
  RxBool showPackage = false.obs;
  RxBool showSmartCardField = false.obs;
  Rx<String> amount = ''.obs;

  Rx<CableTVModel> cableTVServicesModel = CableTVModel().obs;
  var cableTVData = <TVData>[].obs;

  Rx<CableTVPackageModel> cableTvPackageServicesModel =
      CableTVPackageModel().obs;

  Rx<CableTvResponseModel> cableTvResponseServicesModel =
      CableTvResponseModel().obs;

  Rx<VerifyBillerModel> cableTvBillerResponseServicesModel =
      VerifyBillerModel().obs;

  var mobileDataPackage = <Variations>[].obs;

  var selectedCableTV =
      TVData(serviceId: "Select Biller", minimiumAmount: '0').obs;

  var selectedPackage =
      Variations(variationCode: "Select Package", name: '0').obs;

  void selectBiller(TVData data) {
    selectedCableTV.value = data;

    fetchCableTVPackageServices();

    print(selectedCableTV.value.serviceId);
  }

  void selectPackage(Variations package) {
    selectedPackage.value = package;

    showSmartCardField.value = true;

    amount.value = selectedPackage.value.variationAmount!;

    print(selectedPackage.value.variationCode);
  }

  @override
  void onInit() {
    super.onInit();
    fetchCableTVServices();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchCableTVServices() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.cableTvServices);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      cableTVServicesModel =
          CableTVModel.fromJson(jsonDecode(response.body)).obs;

      print(cableTVServicesModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(cableTVServicesModel.toString());
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

  Future<void> fetchCableTVPackageServices() async {
    try {
      isLoadingPackage.value = true;
      showMerchantSection.value = false;
      var url = Uri.parse(
          "${ApiEndpoints.cableTvServices}/${selectedCableTV.value.serviceId}");
      print(url);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      cableTvPackageServicesModel =
          CableTVPackageModel.fromJson(jsonDecode(response.body)).obs;

      print(cableTvPackageServicesModel.toString());

      // airtimeData.value = airtimeServicesModel.value.data.obs;

      if (response.statusCode == 200) {
        print('true');
        print(cableTvPackageServicesModel.toString());
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
        'serviceID': selectedCableTV.value.serviceId!,
        'variation_code': selectedPackage.value.variationCode,
        'billersCode': smartCardNumberController.text,
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

      cableTvBillerResponseServicesModel =
          VerifyBillerModel.fromJson(jsonDecode(response.body)).obs;

      print(cableTvBillerResponseServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (cableTvBillerResponseServicesModel.value.status == false) {
        isMerchantProcessing.value = false;

        Get.snackbar(
          "Error",
          cableTvBillerResponseServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else if (response.statusCode == 200 &&
          cableTvBillerResponseServicesModel.value.status == true) {
        print('true');
        print(cableTvBillerResponseServicesModel.toString());
        isMerchantProcessing.value = false;
        showMerchantSection.value = true;
        Get.snackbar(
          "Success",
          cableTvBillerResponseServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        print('true status error');

        isMerchantProcessing.value = false;

        Get.snackbar(
          "Error",
          cableTvBillerResponseServicesModel.value.message!,
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

  Future<void> buyCableTVService() async {
    try {
      isBillProcessing.value = true;
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.buyCableTv);

      Map body = {
        'serviceID': selectedCableTV.value.serviceId!,
        'billersCode': smartCardNumberController.text,
        'variation_code': selectedPackage.value.variationCode,
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

      cableTvResponseServicesModel =
          CableTvResponseModel.fromJson(jsonDecode(response.body)).obs;

      print(cableTvResponseServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (cableTvResponseServicesModel.value.status == false) {
        Get.snackbar(
          "Error",
          cableTvResponseServicesModel.value.message!,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      if (response.statusCode == 200) {
        print('true');
        print(cableTvResponseServicesModel.toString());
        isBillProcessing.value = false;
        Get.to(() => CableTVResponseScreen(),
            arguments: cableTvResponseServicesModel.value.data!);
      } else {
        print('true status error');

        isBillProcessing.value = false;

        Get.snackbar(
          "Error",
          cableTvResponseServicesModel.value.message!,
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

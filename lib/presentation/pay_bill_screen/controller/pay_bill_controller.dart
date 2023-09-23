import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/pay_bill_screen/models/pay_bill_model.dart';
import 'package:http/http.dart' as http;
import '../../../core/utils/api_endpoints.dart';
import '../models/services_model.dart';

class PayBillController extends GetxController {
  Rx<PayBillModel> payBillModelObj = PayBillModel().obs;

  RxBool isLoading = false.obs;

  Rx<FintapServicesModel> fintapServicesModel = FintapServicesModel().obs;

  @override
  void onInit() {
    super.onInit();
    fetchServices();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchServices() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.fetchServices);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      fintapServicesModel =
          FintapServicesModel.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200) {
        isLoading.value = false;
      } else {
        isLoading.value = false;
      }
    } catch (e) {
      isLoading.value = false;
    }
  }
}

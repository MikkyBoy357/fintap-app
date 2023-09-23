import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/wallet_one_page/models/wallet_one_model.dart';

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/active_investment_model.dart';
import 'package:http/http.dart' as http;

class WalletOneController extends GetxController {
  WalletOneController(this.walletOneModelObj);

  Rx<WalletOneModel> walletOneModelObj;

  RxBool isLoading = false.obs;

  Rx<ActiveInvestmentModel> activeInvestmentServicesModel =
      ActiveInvestmentModel().obs;

  @override
  void onInit() {
    fetchActiveInvestmentServices();
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

  Future<void> fetchActiveInvestmentServices() async {
    isLoading.value = true;

    try {
      String token = await getAccessToken();
      var url = Uri.parse(ApiEndpoints.getInvestments);

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      activeInvestmentServicesModel =
          ActiveInvestmentModel.fromJson(jsonDecode(response.body)).obs;

      print(activeInvestmentServicesModel.toString());

      // airtimeData.value = dataServicesModel.value.data.obs;

      if (response.statusCode == 200 &&
          activeInvestmentServicesModel.value.status == true) {
        isLoading.value = false;
        print('true');
        print(activeInvestmentServicesModel.toString());
      } else {
        print('true status error: ${response.statusCode}');

        isLoading.value = false;
      }
    } catch (e, s) {
      print('true catc error $e :: $s');

      isLoading.value = false;
    }
  }
}

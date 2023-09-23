import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/referral_screen/models/referral_model.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/resferral_response_model.dart';

class ReferralController extends GetxController {
  TextEditingController textInputController = TextEditingController();

  RxBool isLoading = false.obs;

  Rx<ReferralModel> referralModelObj = ReferralModel().obs;
  Rx<ReferralsResponseModel> referralModel = ReferralsResponseModel().obs;

  @override
  void onInit() {
    fetchUserReferrals();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textInputController.dispose();
  }

  void shareText(String text) {
    Share.share(text);
  }

  Future<void> fetchUserReferrals() async {
    try {
      isLoading.value = true;
      var url = Uri.parse(ApiEndpoints.referals);
      var token = await getAccessToken();

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      referralModel =
          ReferralsResponseModel.fromJson(jsonDecode(response.body)).obs;

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

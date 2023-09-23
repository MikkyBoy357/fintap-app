import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/profile_model.dart';

class AccountOneController extends GetxController {
  // AccountOneController(this.accountOneModelObj);

  RxBool isLoading = false.obs;
  Rx<String> refCode = ''.obs;
  TextEditingController contentController = TextEditingController();

  // Rx<AccountOneModel> accountOneModelObj;

  Rx<Account> accountModel = Account().obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserProfile();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    contentController.dispose();
  }

  Future<void> fetchUserProfile() async {
    try {
      isLoading.value = true;
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

      accountModel = Account.fromJson(jsonDecode(response.body)).obs;
      

      if (response.statusCode == 200) {
        refCode.value = accountModel.value.data!.profile!.first.refCode!;   
        isLoading.value = false;
      } else {
      
        isLoading.value = false;
      }
    } catch (e) {
     
      isLoading.value = false;
    }
  }
}

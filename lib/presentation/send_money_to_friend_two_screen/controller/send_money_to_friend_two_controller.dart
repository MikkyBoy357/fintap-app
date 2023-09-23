import 'dart:async';
import 'dart:io';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/send_money_to_friend_two_screen/models/send_money_to_friend_two_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import '../models/search_fintapers_model.dart';

class SendMoneyToFriendTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();
  Rx<SendMoneyToFriendTwoModel> sendMoneyToFriendTwoModelObj =
      SendMoneyToFriendTwoModel().obs;

  // Rx<SendMoneyModel> sendMoneyModelObj = SendMoneyModel().obs;
  final debounceDuration = Duration(milliseconds: 500);
  RxBool isLoading = false.obs;

  final searchQuery = RxString('');

  Rx<SearchFintapersModel> searchFintapersModel = SearchFintapersModel().obs;

  Timer? _debounce;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchController.dispose();
    _debounce?.cancel();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    debounce(searchQuery, (_) => performSearch(searchController.text),
        time: debounceDuration);
  }

  void Function(String)? onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // do something with query
      performSearch(query);
    });
    return null;
  }

  Future<void> performSearch(String identifier) async {
    isLoading.value = true;
    try {
      String token = await getAccessToken();
     
      final response = await http.post(
        Uri.parse(ApiEndpoints.searchFintapers),
        body: jsonEncode({"identifier": identifier}),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );
      print(response.toString());

      searchFintapersModel =
          SearchFintapersModel.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200) {
        isLoading.value = false;
        print(response.toString());
      }
    } on SocketException {
      isLoading.value = false;
      Get.snackbar("Error", "No internet connection");
    } on TimeoutException {
      isLoading.value = false;
      Get.snackbar("Error", "Connection timed out");
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
}

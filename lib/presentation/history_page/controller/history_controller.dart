import 'dart:convert';

import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/api_endpoints.dart';
import '../../../core/utils/shared_data.dart';
import 'package:http/http.dart' as http;

import '../../home_page/models/transaction_model.dart';

class HistoryController extends GetxController with GetSingleTickerProviderStateMixin {
  RxBool isTransactionLoading = false.obs;
  Rx<TransactionModel> transactionModel = TransactionModel().obs;

  late TabController tabsController =
      Get.put(TabController(vsync: this, length: 2));
  // Filtered and sorted transactions
  // List<Data> filteredTransactions = [];
  Rx<String> enterTxt = Rx("lbl_start_date".tr);
  Rx<String> enterOneTxt = Rx("lbl_end_date".tr);
  Rx<int> selectedCategory = 0.obs;
  Rx<String> sortGroupFamily = "lbl_newest".tr.obs;

  Rx<String> startDate = "${DateTime.now()}".obs;
  Rx<String> endDate = "${DateTime.now()}".obs;
  RxBool showDebit = false.obs;
  RxBool showCredit = false.obs;
  RxBool showBoth = true.obs;
  Rx<String> sortNewest = 'newest'.obs;
  var selectedSortingOption = SortingOption.newest.obs;

  RxList<String> listinputItemList = RxList([
    'All',
    'Debit',
    'Credit',
  ]);

  List<Data> pendingTransactions = [];

  List<Data> completedTransactions = [];

  @override
  void onInit() {
    fetchUserTransactions();
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

  Future<void> fetchUserTransactions() async {
    try {
      isTransactionLoading.value = true;
      var url = Uri.parse(ApiEndpoints.getTransactions);
      var token = await getAccessToken();

      final response = await http.get(
        url,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      transactionModel =
          TransactionModel.fromJson(jsonDecode(response.body)).obs;

      if (response.statusCode == 200 && transactionModel.value.status!) {
        pendingTransactions = transactionModel.value.data!
            .where((element) => element.status!.toLowerCase() == "pending")
            .toList();
        completedTransactions = transactionModel.value.data!
            .where((element) => element.status!.toLowerCase() != "pending")
            .toList();
        // filterCompletedTransactions();
        // filterPendingTransactions();

        isTransactionLoading.value = false;
      } else {
        isTransactionLoading.value = false;
      }
    } catch (e) {
      isTransactionLoading.value = false;
    }
  }

  

  // Apply the filter and sorting logic

  // apply for pending transactions
  // void filterPendingTransactions() {
  //   final filter = TransactionFilter(
  //     startDate: startDate.value,
  //     endDate: endDate.value,
  //     showDebit: showDebit.value,
  //     showCredit: showCredit.value,
  //     showBoth: showBoth.value,
  //     sortNewest: sortNewest.value,
  //   );
  //   pendingTransactions = pendingTransactions.where((transaction) {
  //     DateTime createDate = DateTime.parse(transaction.createdAt!);
  //     final isWithinDateRange = createDate.isAfter(filter.startDate!) &&
  //         createDate.isBefore(filter.endDate!.add(Duration(days: 1)));

  //     final matchesDebit =
  //         filter.showDebit && transaction.type!.toLowerCase() == "debit";
  //     final matchesCredit = filter.showCredit && transaction.type == "credit";
  //     final matchesBoth = filter.showBoth;

  //     print("Range:  $isWithinDateRange");
  //     print("MatchesDebit:  $matchesDebit");
  //     print("MatchesCredit:  $matchesCredit");
  //     print("MatchesDebit:  $matchesDebit");
  //     print("MatchesBoth:  $matchesBoth");

  //     return isWithinDateRange &&
  //         (matchesDebit || matchesCredit || matchesBoth);
  //   }).toList();

  //   if (filter.sortNewest) {
  //     pendingTransactions.sort((a, b) {
  //       final DateTime createdAtA = DateTime.parse(a.createdAt!);
  //       final DateTime createdAtB = DateTime.parse(b.createdAt!);
  //       return createdAtA.compareTo(createdAtB);
  //     });
  //   } else {
  //     pendingTransactions.sort((a, b) {
  //       final DateTime createdAtA = DateTime.parse(a.createdAt!);
  //       final DateTime createdAtB = DateTime.parse(b.createdAt!);
  //       return createdAtB.compareTo(createdAtA);
  //     });
  //   }
  // }

  // void filterCompletedTransactions() {
  //   final filter = TransactionFilter(
  //     startDate: startDate.value,
  //     endDate: endDate.value,
  //     showDebit: showDebit.value,
  //     showCredit: showCredit.value,
  //     showBoth: showBoth.value,
  //     sortNewest: sortNewest.value,
  //   );
  //   completedTransactions = completedTransactions.where((transaction) {
  //     DateTime createDate = DateTime.parse(transaction.createdAt!);
  //     final isWithinDateRange = createDate.isAfter(filter.startDate!) &&
  //         createDate.isBefore(filter.endDate!.add(Duration(days: 1)));

  //     final matchesDebit =
  //         filter.showDebit && transaction.type!.toLowerCase() == "debit";
  //     final matchesCredit = filter.showCredit && transaction.type == "credit";
  //     final matchesBoth = filter.showBoth;

  //     return isWithinDateRange &&
  //         (matchesDebit || matchesCredit || matchesBoth);
  //   }).toList();

  //   if (filter.sortNewest) {
  //     completedTransactions.sort((a, b) {
  //       final DateTime createdAtA = DateTime.parse(a.createdAt!);
  //       final DateTime createdAtB = DateTime.parse(b.createdAt!);
  //       return createdAtA.compareTo(createdAtB);
  //     });
  //   } else {
  //     completedTransactions.sort((a, b) {
  //       final DateTime createdAtA = DateTime.parse(a.createdAt!);
  //       final DateTime createdAtB = DateTime.parse(b.createdAt!);
  //       return createdAtB.compareTo(createdAtA);
  //     });
  //   }
  // }
}
// Define the sorting options
enum SortingOption { newest, oldest }
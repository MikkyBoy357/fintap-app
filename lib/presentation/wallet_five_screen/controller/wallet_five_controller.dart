import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/wallet_five_screen/models/wallet_five_model.dart';
import 'package:flutter/material.dart';

class WalletFiveController extends GetxController {
  TextEditingController amountController = TextEditingController();
  Rx<WalletFiveModel> walletFiveModelObj = WalletFiveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

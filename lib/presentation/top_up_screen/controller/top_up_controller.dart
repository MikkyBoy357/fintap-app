import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/top_up_screen/models/top_up_model.dart';
import 'package:flutter/cupertino.dart';

class TopUpController extends GetxController {
  Rx<TopUpModel> topUpModelObj = TopUpModel().obs;

  Rx<TextEditingController> amountController = TextEditingController().obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

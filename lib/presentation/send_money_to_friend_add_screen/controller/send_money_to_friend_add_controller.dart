import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/send_money_to_friend_add_screen/models/send_money_to_friend_add_model.dart';
import 'package:flutter/material.dart';

class SendMoneyToFriendAddController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<SendMoneyToFriendAddModel> sendMoneyToFriendAddModelObj =
      SendMoneyToFriendAddModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }
}

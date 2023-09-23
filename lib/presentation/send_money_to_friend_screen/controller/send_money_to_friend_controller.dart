import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/send_money_to_friend_screen/models/send_money_to_friend_model.dart';
import 'package:flutter/cupertino.dart';

class SendMoneyToFriendController extends GetxController {
  Rx<SendMoneyToFriendModel> sendMoneyToFriendModelObj =
      SendMoneyToFriendModel().obs;

  TextEditingController textEditingController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

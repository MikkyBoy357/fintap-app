import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/help_center_screen/models/help_center_model.dart';
import 'package:flutter/material.dart';

class HelpCenterController extends GetxController {
  TextEditingController textInputController = TextEditingController();

  Rx<HelpCenterModel> helpCenterModelObj = HelpCenterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textInputController.dispose();
  }
}

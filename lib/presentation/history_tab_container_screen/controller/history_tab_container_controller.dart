import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/history_tab_container_screen/models/history_tab_container_model.dart';
import 'package:flutter/material.dart';

class HistoryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HistoryTabContainerModel> historyTabContainerModelObj =
      HistoryTabContainerModel().obs;

  late TabController tabsController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

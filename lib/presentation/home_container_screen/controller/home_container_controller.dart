import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/home_container_screen/models/home_container_model.dart';

import '../../../widgets/custom_bottom_bar.dart';

class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  final selectedTab = 0.obs;

  void changeSelectedTab(BottomBarEnum tab) {
    selectedTab.value = _getTabIndex(tab);
    print("Selected Tap Index: ${selectedTab.value}");
  }

  int _getTabIndex(BottomBarEnum tab) {
    switch (tab) {
      case BottomBarEnum.Home:
        return 0;
      case BottomBarEnum.Wallet:
        return 1;
      case BottomBarEnum.Cards:
        return 2;
      case BottomBarEnum.History:
        return 3;
      case BottomBarEnum.Account:
        return 4;
      default:
        return 0;
    }
  }
}

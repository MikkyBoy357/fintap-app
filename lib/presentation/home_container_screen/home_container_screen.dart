// import 'package:fintap/presentation/history_tab_container_screen/history_tab_container_screen.dart';

// import 'controller/home_container_controller.dart';
import 'package:fintap/core/app_export.dart';
// class HomeContainerScreen extends GetWidget<HomeContainerController> {

//   const HomeContainerScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Navigator(
//                 key: Get.nestedKey(1),
//                 initialRoute: AppRoutes.homePage,
//                 onGenerateRoute: (routeSetting) => GetPageRoute(
//                     page: () => getCurrentPage(routeSetting.name!),
//                     transition: Transition.noTransition)),
//             bottomNavigationBar:
//                 CustomBottomBar(onChanged: (BottomBarEnum type) {
//               Get.toNamed(getCurrentRoute(type), id: 1);
//             })));
//   }

//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Home:
//         return AppRoutes.homePage;
//       case BottomBarEnum.History:
//         return AppRoutes.historyTabContainerScreen;
//       case BottomBarEnum.Wallet:
//         return AppRoutes.walletOnePage;
//       case BottomBarEnum.Account:
//         return AppRoutes.accountOnePage;
//       default:
//         return "/";
//     }
//   }

//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.homePage:
//         return HomePage();
//       case AppRoutes.historyTabContainerScreen:
//         return HistoryTabContainerScreen();
//       case AppRoutes.walletOnePage:
//         return WalletOnePage();
//       case AppRoutes.accountOnePage:
//         return AccountOnePage();
//       default:
//         return DefaultWidget();
//     }
//   }
// }

import 'package:fintap/presentation/history_tab_container_screen/history_tab_container_screen.dart';
// import 'package:fintap/presentation/account_one_page/account_one_page.dart';
// import 'package:fintap/presentation/home_page/home_page.dart';
// import 'package:fintap/presentation/wallet_one_page/wallet_one_page.dart';
// import 'package:fintap/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_bottom_bar.dart';
import '../account_one_page/account_one_page.dart';
import '../cards_page/cards_screen.dart';
import '../home_page/home_page.dart';
import '../wallet_one_page/wallet_one_page.dart';
import 'controller/home_container_controller.dart';
// Import other necessary packages and files

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Obx(() => IndexedStack(
              index: controller.selectedTab.value,
              children: [
                HomePage(),
                WalletOnePage(),
                CardsScreen(),
                HistoryTabContainerScreen(),
                AccountOnePage(),
              ],
            )),
        bottomNavigationBar: Obx(
          () => CustomBottomBar(
            currentIndex: controller.selectedTab.value,
            onChanged: controller.changeSelectedTab,
          ),
        ),
      ),
    );
  }
}

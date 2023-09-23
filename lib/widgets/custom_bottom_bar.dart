import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// //ignore: must_be_immutable
// class CustomBottomBar extends StatelessWidget {
//   CustomBottomBar({this.onChanged, required this.currentIndex});

//   RxInt selectedIndex = 0.obs;
//   int currentIndex = 0;

//   List<BottomMenuModel> bottomMenuList = [
//     BottomMenuModel(
//       icon: ImageConstant.inActiveHouse,
//       activeIcon: ImageConstant.imgHomeIndigoA400,
//       title: "lbl_home".tr,
//       type: BottomBarEnum.Home,
//     ),
//     BottomMenuModel(
//       icon: ImageConstant.imgVideocamera,
//       activeIcon: ImageConstant.activeWallet,
//       title: "Investments".tr,
//       type: BottomBarEnum.Wallet,
//     ),
//     BottomMenuModel(
//       icon: ImageConstant.imgClockBlueGray200,
//       activeIcon: ImageConstant.activeHistory,
//       title: "lbl_history".tr,
//       type: BottomBarEnum.History,
//     ),
//     BottomMenuModel(
//       icon: ImageConstant.imgUser,
//       activeIcon: ImageConstant.activeAccount,
//       title: "lbl_account".tr,
//       type: BottomBarEnum.Account,
//     )
//   ];

//   Function(BottomBarEnum)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Container(
//         decoration: BoxDecoration(
//           color: ColorConstant.whiteA700,
//           border: Border(
//             top: BorderSide(
//               color: ColorConstant.gray200,
//               width: getHorizontalSize(
//                 1.00,
//               ),
//             ),
//           ),
//         ),
//         child: BottomNavigationBar(
//           backgroundColor: Colors.transparent,
//           showSelectedLabels: true,
//           showUnselectedLabels: true,
//           elevation: 0,
//           currentIndex: selectedIndex.value,
//           selectedLabelStyle:
//               AppStyle.txtGeneralSansMedium12IndigoA400.copyWith(
//             height: getVerticalSize(
//               0.99,
//             ),
//             color: ColorConstant.indigoA400,
//           ),
//           unselectedLabelStyle:
//               AppStyle.txtGeneralSansMedium12IndigoA400.copyWith(
//             height: getVerticalSize(
//               0.99,
//             ),
//           ),
//           unselectedItemColor: ColorConstant.blueGray200,
//           selectedItemColor: ColorConstant.indigoA400,
//           type: BottomNavigationBarType.fixed,
//           items: List.generate(bottomMenuList.length, (index) {
//             return BottomNavigationBarItem(
//               icon: Container(
//                 padding: getPadding(
//                   left: 24,
//                   top: 12,
//                   right: 24,
//                   bottom: 12,
//                 ),
//                 child: CustomImageView(
//                   svgPath: bottomMenuList[index].icon,
//                   height: getSize(
//                     28.00,
//                   ),
//                   width: getSize(
//                     28.00,
//                   ),
//                   color: ColorConstant.blueGray200,
//                 ),
//               ),
//               activeIcon: Container(
//                 padding: getPadding(
//                   left: 26,
//                   top: 12,
//                   right: 26,
//                   bottom: 12,
//                 ),
//                 child: CustomImageView(
//                   svgPath: bottomMenuList[index].activeIcon,
//                   height: getSize(
//                     28.00,
//                   ),
//                   width: getSize(
//                     28.00,
//                   ),
//                   color: ColorConstant.indigoA400,
//                 ),
//               ),
//               label: bottomMenuList[index].title ?? "",
//             );
//           }),
//           onTap: (index) {
//             selectedIndex.value = index;
//             onChanged!(bottomMenuList[index].type);
//           },
//         ),
//       ),
//     );
//   }
// }

// enum BottomBarEnum {
//   Home,
//   History,
//   Wallet,
//   Account,
// }

// class BottomMenuModel {
//   BottomMenuModel(
//       {required this.icon,
//       this.title,
//       required this.type,
//       required this.activeIcon});

//   String icon, activeIcon;

//   String? title;

//   BottomBarEnum type;
// }

// class DefaultWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.all(10),
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Please replace the respective Widget here',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

enum BottomBarEnum {
  Home,
  History,
  Cards,
  Wallet,
  Account,
}

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<BottomBarEnum> onChanged;

  const CustomBottomBar({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 0,
      selectedLabelStyle: AppStyle.txtGeneralSansMedium12IndigoA400.copyWith(
        height: getVerticalSize(
          0.99,
        ),
        color: ColorConstant.indigoA400,
      ),
      unselectedLabelStyle: AppStyle.txtGeneralSansMedium12IndigoA400.copyWith(
        height: getVerticalSize(
          0.99,
        ),
      ),
      unselectedItemColor: ColorConstant.blueGray200,
      selectedItemColor: ColorConstant.indigoA400,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        final selectedTab = _getTabFromIndex(index);
        onChanged(selectedTab);
      },
      items: [
        BottomNavigationBarItem(
          //       icon: ImageConstant.inActiveHouse,
//       activeIcon: ImageConstant.imgHomeIndigoA400,
          icon: Container(
            padding: getPadding(
              left: 24,
              top: 12,
              right: 24,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.inActiveHouse,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.blueGray200,
            ),
          ),

          activeIcon: Container(
            padding: getPadding(
              left: 26,
              top: 12,
              right: 26,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgHomeIndigoA400,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.indigoA400,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: getPadding(
              left: 24,
              top: 12,
              right: 24,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgVideocamera,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.blueGray200,
            ),
          ),

          activeIcon: Container(
            padding: getPadding(
              left: 26,
              top: 12,
              right: 26,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.activeWallet,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.indigoA400,
            ),
          ),
          label: "Investments",
          // type: BottomBarEnum.Wallet,
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: getPadding(
              left: 24,
              top: 12,
              right: 24,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.creditCard,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.blueGray200,
            ),
          ),

          activeIcon: Container(
            padding: getPadding(
              left: 26,
              top: 12,
              right: 26,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.creditCard,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.indigoA400,
            ),
          ),
          label: "Cards",
          // type: BottomBarEnum.Wallet,
        ),
        BottomNavigationBarItem(
//       icon: ImageConstant.imgClockBlueGray200,
//       activeIcon: ImageConstant.activeHistory,
          icon: Container(
            padding: getPadding(
              left: 24,
              top: 12,
              right: 24,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgClockBlueGray200,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.blueGray200,
            ),
          ),

          activeIcon: Container(
            padding: getPadding(
              left: 26,
              top: 12,
              right: 26,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.activeHistory,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.indigoA400,
            ),
          ),
          label: 'History',
        ),
        BottomNavigationBarItem(
          //       icon: ImageConstant.imgUser,
//       activeIcon: ImageConstant.activeAccount,

          icon: Container(
            padding: getPadding(
              left: 24,
              top: 12,
              right: 24,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgUser,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.blueGray200,
            ),
          ),

          activeIcon: Container(
            padding: getPadding(
              left: 26,
              top: 12,
              right: 26,
              bottom: 12,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.activeAccount,
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              color: ColorConstant.indigoA400,
            ),
          ),

          label: 'Account',
        ),
      ],
    );
  }

  BottomBarEnum _getTabFromIndex(int index) {
    switch (index) {
      case 0:
        return BottomBarEnum.Home;
      case 1:
        return BottomBarEnum.Wallet;
      case 2:
        return BottomBarEnum.Cards;
      case 3:
        return BottomBarEnum.History;
      case 4:
        return BottomBarEnum.Account;
      default:
        return BottomBarEnum.Home;
    }
  }
}

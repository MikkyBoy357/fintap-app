import 'controller/account_controller.dart';
import 'package:fintap/core/app_export.dart';

import 'package:fintap/widgets/app_bar/appbar_circleimage.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';

import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AccountScreen extends GetWidget<AccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                padding: getPadding(
                  top: 12,
                  bottom: 12,
                ),
                decoration: AppDecoration.fillIndigo500.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        56.00,
                      ),
                      leadingWidth: 80,
                      leading: AppbarCircleimage(
                        imagePath: ImageConstant.imgPhoto56x56,
                        margin: getMargin(
                          left: 24,
                        ),
                      ),
                      title: Padding(
                        padding: getPadding(
                          left: 12,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppbarSubtitle1(
                              text: "lbl_chris_aaron".tr,
                              margin: getMargin(
                                right: 60,
                              ),
                            ),
                            AppbarSubtitle2(
                              text: "msg_chrisaaron_gmail_com".tr,
                              margin: getMargin(
                                top: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                        bottom: 12,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 11,
                        right: 16,
                        bottom: 11,
                      ),
                      decoration: AppDecoration.fillIndigoA400.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_complete_your_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtGeneralSansMedium14Gray100
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.06,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                    width: getHorizontalSize(
                                      259.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.indigoA100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          4.00,
                                        ),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          4.00,
                                        ),
                                      ),
                                      child: LinearProgressIndicator(
                                        value: 0.36,
                                        backgroundColor:
                                            ColorConstant.indigoA100,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Text(
                                    "msg_1_3_verify_email".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtGeneralSansRegular12
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.23,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowrightWhiteA700,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 20,
                              bottom: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 22,
                      right: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_reward".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium14Bluegray200
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              1.00,
                            ),
                            height: getVerticalSize(
                              0.85,
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            top: 14,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      variant: IconButtonVariant.FillBlue50,
                                      shape: IconButtonShape.CircleBorder20,
                                      child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgClockIndigoA40040x40,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 11,
                                        bottom: 9,
                                      ),
                                      child: Text(
                                        "lbl_my_coins".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: ColorConstant.blue50,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder21,
                                      ),
                                      child: Container(
                                        height: getSize(
                                          40.00,
                                        ),
                                        width: getSize(
                                          40.00,
                                        ),
                                        padding: getPadding(
                                          all: 12,
                                        ),
                                        decoration:
                                            AppDecoration.fillBlue50.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder21,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgOffer,
                                              height: getSize(
                                                16.00,
                                              ),
                                              width: getSize(
                                                16.00,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 11,
                                        bottom: 9,
                                      ),
                                      child: Text(
                                        "lbl_my_rewards".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      variant: IconButtonVariant.FillBlue50,
                                      shape: IconButtonShape.CircleBorder20,
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgAirplaneIndigoA400,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        "lbl_referral".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                          ),
                          child: Text(
                            "lbl_app_setting".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansMedium14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                1.00,
                              ),
                              height: getVerticalSize(
                                0.85,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            top: 14,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "msg_profile_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_notification".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "msg_security_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomButton(
                                height: 56,
                                width: 327,
                                text: "lbl_linked_account".tr,
                                margin: getMargin(
                                  top: 4,
                                ),
                                variant: ButtonVariant.OutlineGray200_1,
                                shape: ButtonShape.Square,
                                padding: ButtonPadding.PaddingT18,
                                fontStyle: ButtonFontStyle.GeneralSansMedium14,
                                suffixWidget: Container(
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  top: 16,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_clear_cache".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "lbl_24_mb".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle
                                          .txtGeneralSansMedium12Bluegray200
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.50,
                                        ),
                                        height: getVerticalSize(
                                          1.48,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: Text(
                            "lbl_general_info".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansMedium14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                1.00,
                              ),
                              height: getVerticalSize(
                                0.85,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            top: 16,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  top: 16,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_help_center".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomButton(
                                height: 56,
                                width: 327,
                                text: "msg_terms_conditions".tr,
                                margin: getMargin(
                                  top: 4,
                                ),
                                variant: ButtonVariant.OutlineGray200_1,
                                shape: ButtonShape.Square,
                                padding: ButtonPadding.PaddingT18,
                                fontStyle: ButtonFontStyle.GeneralSansMedium14,
                                suffixWidget: Container(
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  top: 16,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_privacy_policy".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          height: 56,
                          width: 327,
                          text: "lbl_logout".tr,
                          margin: getMargin(
                            top: 16,
                          ),
                          variant: ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.GeneralSansMedium14Red900,
                          suffixWidget: Container(
                            margin: getMargin(
                              left: 12,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgTrash,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {
        //     Get.toNamed(getCurrentRoute(type), id: 1);
        //   },
        // ),
      ),
    );
  }

//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Home:
//         return AppRoutes.homePage;
//       case BottomBarEnum.History:
//         return AppRoutes.historyOnePage;
//       case BottomBarEnum.Wallet:
//         return AppRoutes.walletOnePage;
//       case BottomBarEnum.Account:
//         return AppRoutes.accountOnePage;
//       default:
//         return "/";
//     }
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.homePage:
//         return HomePage();
//       case AppRoutes.historyOnePage:
//         return HistoryOnePage();
//       case AppRoutes.walletOnePage:
//         return WalletOnePage();
//       case AppRoutes.accountOnePage:
//         return AccountOnePage();
//       default:
//         return DefaultWidget();
//     }
//   }
}

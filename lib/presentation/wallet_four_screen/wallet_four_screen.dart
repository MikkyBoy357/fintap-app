import 'package:fintap/widgets/bk_btn.dart';

import 'controller/wallet_four_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_drop_down.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class WalletFourScreen extends GetWidget<WalletFourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 48,
                leading: BkBtn(
                  margin: getMargin(left: 24, top: 12, bottom: 24),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_withdrawal_destination".tr),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 24, top: 24, right: 24),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(all: 12),
                                    decoration: AppDecoration.outlineGray200,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              variant:
                                                  IconButtonVariant.FillBlue50,
                                              shape: IconButtonShape
                                                  .CircleBorder20,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Text(
                                                  "lbl_to_moni_balance".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray900
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.06)))),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgClockIndigoA40024x24,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin:
                                                  getMargin(top: 8, bottom: 8))
                                        ])),
                                CustomDropDown(
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 30, right: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownGray900)),
                                    hintText: "lbl_to_other_wallet".tr,
                                    margin: getMargin(top: 4),
                                    padding: DropDownPadding.PaddingT22,
                                    fontStyle: DropDownFontStyle
                                        .GeneralSansMedium14Bluegray900,
                                    items: controller.walletFourModelObj.value
                                        .dropdownItemList,
                                    prefix: Container(
                                        padding: getPadding(all: 12),
                                        margin: getMargin(all: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blue50,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(20.00))),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgClockIndigoA40016x16)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(64.00)),
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                Container(
                                    margin: getMargin(top: 4),
                                    padding: getPadding(top: 12, bottom: 12),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              variant:
                                                  IconButtonVariant.FillBlue50,
                                              shape: IconButtonShape
                                                  .CircleBorder20,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume)),
                                          CustomDropDown(
                                              width: 251,
                                              focusNode: FocusNode(),
                                              icon: Container(
                                                  margin: getMargin(left: 30),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray900)),
                                              hintText:
                                                  "msg_saved_bank_account".tr,
                                              fontStyle: DropDownFontStyle
                                                  .GeneralSansMedium14Bluegray900,
                                              margin:
                                                  getMargin(top: 8, bottom: 8),
                                              variant: DropDownVariant.None,
                                              items: controller
                                                  .walletFourModelObj
                                                  .value
                                                  .dropdownItemList1,
                                              onChanged: (value) {
                                                controller.onSelected1(value);
                                              })
                                        ]))
                              ])),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: 56,
                margin: getPadding(left: 24, right: 24, bottom: 20),
                width: size.width,
                text: "lbl_withdraw_now".tr)));
  }

  onTapArrowleft24() {
    Get.back();
  }
}

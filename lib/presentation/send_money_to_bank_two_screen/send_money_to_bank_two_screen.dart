import 'controller/send_money_to_bank_two_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SendMoneyToBankTwoScreen extends GetWidget<SendMoneyToBankTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 12, bottom: 24),
                    onTap: onTapArrowleft14),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_bank_account".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgPlusIndigoA40024x24,
                      margin:
                          getMargin(left: 24, top: 12, right: 24, bottom: 24))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                margin: getMargin(left: 24, top: 24, right: 24, bottom: 5),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.outlineGray200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(top: 2, bottom: 2),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgImage59)),
                                Padding(
                                    padding: getPadding(left: 12, top: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_chris_aaron".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_citibank2".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99)))),
                                                    Container(
                                                        height: getSize(4.00),
                                                        width: getSize(4.00),
                                                        margin: getMargin(
                                                            left: 8,
                                                            top: 5,
                                                            bottom: 8),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueGray200,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        2.00)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text(
                                                            "lbl_ending_in_4554"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansRegular12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99))))
                                                  ]))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 10, bottom: 10))
                              ])),
                      Container(
                          margin: getMargin(top: 4),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.outlineGray200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(top: 2, bottom: 2),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgFrame40)),
                                Padding(
                                    padding: getPadding(left: 12, top: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_chris_aaron".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_capital_one2"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99)))),
                                                    Container(
                                                        height: getSize(4.00),
                                                        width: getSize(4.00),
                                                        margin: getMargin(
                                                            left: 8,
                                                            top: 5,
                                                            bottom: 8),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueGray200,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        2.00)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text(
                                                            "lbl_ending_in_4554"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansRegular12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99))))
                                                  ]))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(
                                        left: 43, top: 10, bottom: 10))
                              ])),
                      Container(
                          margin: getMargin(top: 4),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.outlineGray200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(top: 2, bottom: 2),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgImage59)),
                                Padding(
                                    padding: getPadding(left: 12, top: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_stephan_reamur".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06))),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_citibank2".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99)))),
                                                    Container(
                                                        height: getSize(4.00),
                                                        width: getSize(4.00),
                                                        margin: getMargin(
                                                            left: 8,
                                                            top: 5,
                                                            bottom: 8),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueGray200,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        2.00)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text(
                                                            "lbl_ending_in_4554"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansRegular12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99))))
                                                  ]))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 10, bottom: 10))
                              ])),
                      Container(
                          margin: getMargin(top: 4),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.outlineGray200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(top: 2, bottom: 2),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgImage59)),
                                Padding(
                                    padding: getPadding(left: 12, top: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_sam_mendoza".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_citibank2".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99)))),
                                                    Container(
                                                        height: getSize(4.00),
                                                        width: getSize(4.00),
                                                        margin: getMargin(
                                                            left: 8,
                                                            top: 5,
                                                            bottom: 8),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueGray200,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        2.00)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text(
                                                            "lbl_ending_in_4554"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansRegular12Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        0.99))))
                                                  ]))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 10, bottom: 10))
                              ]))
                    ]))));
  }

  onTapArrowleft14() {
    Get.back();
  }
}

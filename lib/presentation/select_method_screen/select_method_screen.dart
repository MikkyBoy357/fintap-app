import 'package:fintap/presentation/new_card_screen/controller/new_card_controller.dart';
import 'package:fintap/presentation/new_card_screen/new_card_screen.dart';
import 'package:fintap/presentation/select_method_screen/models/select_method_model.dart';
import 'package:fintap/presentation/top_up_with_bank_transfer_screen/controller/top_up_with_bank_transfer_controller.dart';
import 'package:fintap/presentation/top_up_with_bank_transfer_screen/top_up_with_bank_transfer_screen.dart';
import 'package:fintap/presentation/top_up_with_paypal_screen/controller/top_up_with_paypal_controller.dart';
import 'package:fintap/presentation/top_up_with_paypal_screen/top_up_with_paypal_screen.dart';
import 'package:fintap/widgets/bk_btn.dart';

import 'controller/select_method_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SelectMethodScreen extends GetWidget<SelectMethodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
              backgroundColor: ColorConstant.whiteA700,
              height: getVerticalSize(60.00),
              leadingWidth: 48,
              leading: BkBtn(
                margin: getMargin(left: 24, top: 12, bottom: 24),
              ),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_select_method".tr),
            ),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 14, right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_my_saved_card".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle
                                      .txtGeneralSansMedium14Bluegray200
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(1.00),
                                          height: getVerticalSize(0.85))),
                              Container(
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration:
                                                AppDecoration.outlineGray200,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      margin: getMargin(
                                                          top: 2, bottom: 2),
                                                      padding: IconButtonPadding
                                                          .PaddingAll7,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFrame25)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12, top: 2),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_citibank_credit"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGeneralSansMedium14Bluegray900
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.06))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "msg_account_ending_in"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtGeneralSansRegular12Bluegray200
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.99))))
                                                          ])),
                                                  Spacer(),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    color:
                                                        ColorConstant.gray300,
                                                    size: 20,
                                                  )
                                                ])),
                                        InkWell(
                                          onTap: () => Get.bottomSheet(
                                              NewCardScreen(
                                                  Get.put(NewCardController())),
                                              isScrollControlled: true),
                                          child: Container(
                                              margin: getMargin(top: 4),
                                              padding: getPadding(all: 16),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 40,
                                                        width: 40,
                                                        variant:
                                                            IconButtonVariant
                                                                .FillBlue50,
                                                        shape: IconButtonShape
                                                            .CircleBorder20,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgPlusIndigoA400)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_new_card"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGeneralSansMedium14Bluegray900
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.06))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              4),
                                                                  child: Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgFrame25,
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(25.00)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage51,
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(25.00),
                                                                            margin: getMargin(left: 6)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage52,
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(25.00),
                                                                            margin: getMargin(left: 6)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage54,
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(25.00),
                                                                            margin: getMargin(left: 6))
                                                                      ]))
                                                            ])),
                                                    Spacer(),
                                                    Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      color:
                                                          ColorConstant.gray300,
                                                      size: 20,
                                                    )
                                                  ])),
                                        )
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("lbl_bank_transfer".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtGeneralSansMedium14Bluegray200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(1.00),
                                              height: getVerticalSize(0.85)))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: controller.bankList.length,
                                    itemBuilder: (context, index) {
                                      SelectMethodModel model =
                                          controller.bankList[index];
                                      return InkWell(
                                        onTap: () => Get.bottomSheet(
                                            TopUpWithBankTransferScreen(Get.put(
                                                TopUpWithBankTransferController())),
                                            isScrollControlled: true),
                                        child: Container(
                                            padding: getPadding(all: 16),
                                            decoration:
                                                AppDecoration.outlineGray200,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      padding: IconButtonPadding
                                                          .PaddingAll4,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              model.img)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 10,
                                                          bottom: 10),
                                                      child: Text(model.title,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: AppStyle
                                                              .txtGeneralSansMedium14Bluegray900
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.06)))),
                                                  Spacer(),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    color:
                                                        ColorConstant.gray300,
                                                    size: 20,
                                                  )
                                                ])),
                                      );
                                    },
                                  )),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("lbl_digital_payment".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtGeneralSansMedium14Bluegray200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(1.00),
                                              height: getVerticalSize(0.85)))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount:
                                        controller.digialPaymentList.length,
                                    itemBuilder: (context, index) {
                                      SelectMethodModel model =
                                          controller.digialPaymentList[index];
                                      return InkWell(
                                        onTap: () => Get.bottomSheet(
                                            TopUpWithPaypalScreen(Get.put(
                                                TopUpWithPaypalController())),
                                            isScrollControlled: true),
                                        child: Container(
                                            padding: getPadding(all: 16),
                                            decoration:
                                                AppDecoration.outlineGray200,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              model.img)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 11,
                                                          bottom: 9),
                                                      child: Text(model.title,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: AppStyle
                                                              .txtGeneralSansMedium14Bluegray900
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.06)))),
                                                  Spacer(),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    color:
                                                        ColorConstant.gray300,
                                                    size: 20,
                                                  )
                                                ])),
                                      );
                                    },
                                  )),
                            ]))))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}

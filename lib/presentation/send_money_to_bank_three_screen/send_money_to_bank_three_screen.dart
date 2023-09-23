import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/money_formater.dart';
import '../send_money_to_bank_one_screen/models/send_money_to_bank_response_model.dart';
import 'controller/send_money_to_bank_three_controller.dart';

class SendMoneyToBankThreeScreen
    extends GetWidget<SendMoneyToBankThreeController> {
  @override
  Widget build(BuildContext context) {
    BankTransferData data = Get.arguments;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          backgroundColor: ColorConstant.whiteA700,
          height: getVerticalSize(
            60.00,
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "Transfer Receipt".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgCloseGray900,
              margin: getMargin(
                left: 24,
                top: 12,
                right: 24,
                bottom: 24,
              ),
              onTap: () => Get.back(),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 24,
            top: 16,
            right: 24,
            bottom: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    520.00,
                  ),
                  width: size.width,
                  margin: getMargin(
                    top: 8,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.ticketBackground,
                        height: getVerticalSize(
                          520.00,
                        ),
                        width: size.width,
                        margin: getMargin(top: 32),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: size.width,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 120,
                                ),
                                child: Text(
                                  "Sent".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle
                                      .txtGeneralSansSemibold24Bluegray900
                                      .copyWith(
                                    height: getVerticalSize(
                                      0.99,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  250.00,
                                ),
                                margin: getMargin(
                                  top: 6,
                                ),
                                child: Text(
                                  "You have successfully made a transfer request of NGN${data.extra!.amount} to ${data.extra!.beneficiaryDetails!.accountName}'s  ${data.extra!.beneficiaryDetails!.bankName} Account."
                                      .tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.txtGeneralSansRegular14.copyWith(
                                    height: getVerticalSize(
                                      1.16,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 16,
                                  top: 17,
                                  right: 16,
                                ),
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12,
                                ),
                                child: Row(
                                  children: [
                                    CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      variant: IconButtonVariant.FillWhiteA700,
                                      shape: IconButtonShape.CircleBorder24,
                                      child: CustomImageView(
                                        svgPath: ImageConstant.bankSVGIcon,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 1,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${data.extra!.beneficiaryDetails!.accountName}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium16Bluegray900
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.11,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: Text(
                                              "${data.extra!.beneficiaryDetails!.bankName} ${data.extra!.beneficiaryDetails!.accountNumber}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.27,
                                                ),
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
                                    top: 20,
                                  ),
                                  child: Container(
                                    width: size.width * .8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Amount",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium12Bluegray200
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.50,
                                                  ),
                                                  height: getVerticalSize(
                                                    0.99,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 3,
                                                ),
                                                child: Text(
                                                  "${data.extra!.beneficiaryDetails!.accountName}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray900
                                                      .copyWith(
                                                    fontSize: 14,
                                                    height: getVerticalSize(
                                                      0.95,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: SizedBox(
                                            width: size.width * .4,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Fee",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium12Bluegray200
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.50,
                                                    ),
                                                    height: getVerticalSize(
                                                      0.99,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                  ),
                                                  child: Text(
                                                    "${data.extra!.beneficiaryDetails!.bankName}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray900
                                                        .copyWith(
                                                      height: getVerticalSize(
                                                        0.95,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Padding(
                                  padding: getPadding(
                                    top: 20,
                                  ),
                                  child: Container(
                                    width: size.width * .55,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Order Info".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium12Bluegray200
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.50,
                                                ),
                                                height: getVerticalSize(
                                                  0.99,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Text(
                                                "Withdrawal".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium14Bluegray900
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    0.95,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Source of Funds".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium12Bluegray200
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.50,
                                                  ),
                                                  height: getVerticalSize(
                                                    0.99,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "Wallet balance",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray900
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      0.95,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Container(
                                    width: size.width * .55,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Status".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium12Bluegray200
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.50,
                                                ),
                                                height: getVerticalSize(
                                                  0.99,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Text(
                                                '${data.status}',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium14Bluegray900
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    0.95,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Reference".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium12Bluegray200
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.50,
                                                  ),
                                                  height: getVerticalSize(
                                                    0.99,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  '${data.reference}',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray900
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      0.95,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 64,
                        width: 64,
                        variant: IconButtonVariant.FillLightgreen400,
                        shape: IconButtonShape.CircleBorder32,
                        alignment: Alignment.topCenter,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgCheckmarkWhiteA700,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: getMargin(
                            top: 23,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 15,
                            right: 16,
                            bottom: 15,
                          ),
                          decoration: AppDecoration.fillIndigoA400.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                  bottom: 7,
                                ),
                                child: Text(
                                  "Total",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style:
                                      AppStyle.txtGeneralSansMedium18.copyWith(
                                    height: getVerticalSize(
                                      0.82,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  "${moneyFormat().format(double.parse("${data.extra!.totalAmount}"))}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtGeneralSansSemibold28
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              margin: getPadding(
                left: 0,
                right: 0,
                bottom: 20,
              ),
              height: 56,
              width: size.width / 2.5,
              text: "Share Receipt".tr,
              onTap: () => Get.offAllNamed(AppRoutes.homeContainerScreen),
            ),
            CustomButton(
              margin: getPadding(
                left: 0,
                right: 00,
                bottom: 20,
              ),
              height: 56,
              width: size.width / 2.5,
              text: "lbl_back_to_home".tr,
              onTap: () => Get.offAllNamed(AppRoutes.homeContainerScreen),
            ),
          ],
        ),
      ),
    );
  }
}

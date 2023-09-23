import 'package:intl/intl.dart';

import 'controller/pay_bill_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PayBillOneScreen extends GetWidget<PayBillOneController> {
  @override
  Widget build(BuildContext context) {
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
            text: "lbl_bill_status".tr,
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
                                "lbl_bill_paid".tr,
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
                                "msg_you_have_successfully4".tr,
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
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Row(
                                children: [
                                  CustomIconButton(
                                    height: 48,
                                    width: 48,
                                    variant: IconButtonVariant.FillWhiteA700,
                                    shape: IconButtonShape.CircleBorder24,
                                    child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgClockIndigoA40048x48,
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
                                          "lbl_water".tr,
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
                                            "lbl_5757182901234".tr,
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
                                  top: 40,
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
                                            "lbl_order_info".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium12Bluegray200
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
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
                                              "lbl_send_money".tr,
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
                                              "lbl_source_of_fund".tr,
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
                                                "lbl_balance".tr,
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
                                            "lbl_date".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium12Bluegray200
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
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
                                              '10 Oct 2022',
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
                                              "lbl_time".tr,
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
                                                '11:04:59',
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
                                "lbl_total".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtGeneralSansMedium18.copyWith(
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
                                "N " +
                                    NumberFormat.currency(
                                      symbol: '', // currency symbol
                                      decimalDigits:
                                          2, // number of decimal places
                                    )
                                        .format(double.parse("0.00".toString()))
                                        .tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style:
                                    AppStyle.txtGeneralSansSemibold28.copyWith(
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
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          margin: getPadding(
            left: 24,
            right: 24,
            bottom: 20,
          ),
          height: 56,
          width: size.width,
          text: "lbl_back_to_home".tr,
          onTap: () => Get.offAllNamed(AppRoutes.homeContainerScreen),
        ),
      ),
    );
  }
}

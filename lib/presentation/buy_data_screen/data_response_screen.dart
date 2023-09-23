import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/capitalize_all_word.dart';
import '../../core/utils/money_formater.dart';
import 'models/data_response_model.dart';

class DataResponseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ResData data = Get.arguments;
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
            text: "",
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
                                "${data.service} ${data.status}",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle
                                    .txtGeneralSansSemibold24Bluegray900
                                    .copyWith(
                                  fontSize: getFontSize(20.0),
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
                                "You have successfully recharged ${data.extra!.phone} with ${data.extra!.unitPrice}",
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
                                      svgPath: ImageConstant.creditCard,
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
                                        SizedBox(
                                          width: screenSize.width * .56,
                                          child: Text(
                                            data.description ?? "",
                                            maxLines: 1,
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
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: Text(
                                            data.extra!.phone ?? "",
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
                                            "Order Reference",
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
                                              data.reference ?? "",
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
                                              "Status",
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
                                                capitalizeAllWord(
                                                    data.extra!.status ?? ""),
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
                                            "Unit Price",
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
                                              "${moneyFormat().format(double.parse(data.extra!.unitPrice.toString()))}",
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
                                              "Discount".tr,
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
                                                "${moneyFormat().format(double.parse(data.extra!.discount.toString()))}",
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
                                "Total",
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
                                "${moneyFormat().format(double.parse(data.extra!.totalAmount.toString()))}",
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

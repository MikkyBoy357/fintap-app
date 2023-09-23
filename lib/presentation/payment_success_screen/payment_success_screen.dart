import 'package:fintap/core/utils/capitalize_all_word.dart';
import 'package:intl/intl.dart';

import '../../core/utils/money_formater.dart';
import '../home_page/models/transaction_model.dart';
import 'controller/payment_success_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccessScreen extends GetWidget<PaymentSuccessController> {
  @override
  Widget build(BuildContext context) {
    Data data = Get.arguments;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60.00,
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "Transaction",
          ),
          actions: [
            // AppbarImage(
            //   height: getSize(
            //     24.00,
            //   ),
            //   width: getSize(
            //     24.00,
            //   ),
            //   svgPath: ImageConstant.imgCloseGray900,
            //   margin: getMargin(
            //     left: 24,
            //     top: 12,
            //     right: 24,
            //     bottom: 24,
            //   ),
            // ),
          ],
          styleType: Style.bgFillWhiteA700,
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
                                "${capitalizeAllWord("${data.service!}  ${data.status!}")}"
                                    .tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle
                                    .txtGeneralSansSemibold24Bluegray900
                                    .copyWith(
                                  fontSize: 18,
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
                                "${data.type} transaction of ${moneyFormat(name: "NGN ").format(double.parse(data.amount.toString()))} is \n${capitalizeAllWord(data.status ?? '')}",
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
                                top: 18,
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
                                      imagePath: ImageConstant.appLogo,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${capitalizeAllWord(data.description!)}",
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
                                              top: 1,
                                            ),
                                            child: Text(
                                              "Reference: ${data.reference}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14Bluegray200
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
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: getPadding(
                                  top: 60,
                                ),
                                child: Container(
                                  width: size.width * .65,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Balance Before",
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
                                              "${moneyFormat(name: "N ").format(double.parse(data.prevBalance.toString()))}",
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Balance After".tr,
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
                                                "${moneyFormat(name: "N ").format(double.parse(data.balanceAfter.toString()))}",
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
                                  width: size.width * .65,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Date",
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
                                              DateFormat.yMMMEd().format(
                                                DateTime.parse(
                                                  data.createdAt ?? "",
                                                ),
                                              ),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Time",
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
                                                DateFormat.jm().format(
                                                  DateTime.parse(
                                                    data.createdAt ?? "",
                                                  ),
                                                ),
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
                            data.service!.toLowerCase() == "deposit" &&
                                    data.description!.toUpperCase() ==
                                        "ADMIN WALLET CREDIT"
                                ? SizedBox()
                                : data.service!.toLowerCase() != "deposit"
                                    ? SizedBox()
                                    : Padding(
                                        padding: getPadding(
                                          top: 16,
                                        ),
                                        child: Container(
                                          width: size.width * .65,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Sender",
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
                                                      top: 3,
                                                    ),
                                                    child: Text(
                                                      data
                                                              .extra!
                                                              .eventData!
                                                              .paymentSourceInformation!
                                                              .first
                                                              .accountName ??
                                                          "",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Description",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
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
                                                        data.extra!.eventData!
                                                                .paymentDescription ??
                                                            data.description ??
                                                            "",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: AppStyle
                                                            .txtGeneralSansMedium14Bluegray900
                                                            .copyWith(
                                                          height:
                                                              getVerticalSize(
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
                      variant: data.status!.toLowerCase() == 'pending'
                          ? IconButtonVariant.FillOrange50
                          : data.status!.toLowerCase() == 'successful'
                              ? IconButtonVariant.FillLightgreen400
                              : IconButtonVariant.FillRed900,
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
                                "${moneyFormat(name: "N ").format(double.parse(data.amount.toString()))}",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style:
                                    AppStyle.txtGeneralSansSemibold28.copyWith(
                                  fontSize: 20,
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
          text: "Done",
          onTap: () => Get.back(),
        ),
      ),
    );
  }
}

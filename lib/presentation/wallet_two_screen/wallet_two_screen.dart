import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../core/utils/money_formater.dart';

import 'controller/wallet_two_controller.dart';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WalletTwoScreen extends GetWidget<WalletTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(children: [
                        Container(
                            width: size.width,
                            margin: getMargin(top: 20),
                            padding: getPadding(
                                left: 24, top: 12, right: 24, bottom: 12),
                            decoration: AppDecoration.fillGray200.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  BkBtn(
                                    margin: getMargin(all: 0),
                                  ),
                                  Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Obx(
                                        () => controller.isLoading.value
                                            ? Text("...")
                                            : Text(
                                                controller
                                                        .investmentDetailsServicesModel
                                                        .value
                                                        .data!
                                                        .first
                                                        .extra!
                                                        .plan ??
                                                    "",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtGeneralSansSemibold18
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.50),
                                                        height: getVerticalSize(
                                                            0.99))),
                                      )),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    color: Colors.transparent,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                  )
                                ])),
                        Container(
                            margin: getMargin(left: 24, right: 24, top: 16),
                            padding: getPadding(
                                left: 16, top: 15, right: 16, bottom: 15),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Obx(() => controller.isLoading.value
                                ? Container(
                                    alignment: Alignment.center,
                                    margin: getPadding(
                                      left: 24,
                                      right: 24,
                                      bottom: 20,
                                    ),
                                    child: CupertinoActivityIndicator(
                                      animating: true,
                                      color: ColorConstant.lightGreen400,
                                      radius: 20,
                                    ),
                                  )
                                : Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(controller.duration.value,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGeneralSansMedium14Bluegray200
                                                    .copyWith(
                                                        color: Colors.black,
                                                        height: getVerticalSize(
                                                            0.95))),
                                            Text(controller.daysLeft.value,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGeneralSansMedium14Bluegray200
                                                    .copyWith(
                                                        color: Colors.black,
                                                        height: getVerticalSize(
                                                            0.95))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("investment Amount:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  moneyFormat().format(
                                                    double.parse(
                                                      controller
                                                              .investmentDetailsServicesModel
                                                              .value
                                                              .data!
                                                              .first
                                                              .extra!
                                                              .investedAmount ??
                                                          "0",
                                                    ),
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text("",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Expected Return:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  moneyFormat().format(
                                                    double.parse(
                                                      controller
                                                              .investmentDetailsServicesModel
                                                              .value
                                                              .data!
                                                              .first
                                                              .extra!
                                                              .expectedReturn ??
                                                          "0",
                                                    ),
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text("",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        Gap(10),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("ROI:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  moneyFormat().format(
                                                    double.parse(
                                                      controller
                                                              .investmentDetailsServicesModel
                                                              .value
                                                              .data!
                                                              .first
                                                              .extra!
                                                              .expectedProfit ??
                                                          "0",
                                                    ),
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text("",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        Gap(10),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("ROI Percentage:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  controller
                                                          .investmentDetailsServicesModel
                                                          .value
                                                          .data!
                                                          .first
                                                          .extra!
                                                          .percentage ??
                                                      "0",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text("%",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        Gap(10),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Start Date:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  DateFormat.MMMd().format(
                                                        DateFormat(dateFormat)
                                                            .parse(
                                                          controller
                                                                  .investmentDetailsServicesModel
                                                                  .value
                                                                  .data!
                                                                  .first
                                                                  .extra!
                                                                  .createDate ??
                                                              "",
                                                        ),
                                                      ) +
                                                      ", " +
                                                      DateFormat.y().format(
                                                        DateFormat(dateFormat)
                                                            .parse(
                                                          controller
                                                                  .investmentDetailsServicesModel
                                                                  .value
                                                                  .data!
                                                                  .first
                                                                  .extra!
                                                                  .createDate ??
                                                              "",
                                                        ),
                                                      ) +
                                                      ", " +
                                                      DateFormat.jm().format(
                                                        DateFormat(dateFormat)
                                                            .parse(
                                                          controller
                                                                  .investmentDetailsServicesModel
                                                                  .value
                                                                  .data!
                                                                  .first
                                                                  .extra!
                                                                  .createDate ??
                                                              "",
                                                        ),
                                                      ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text("",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Due Date:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  DateFormat.MMMd().format(
                                                        DateFormat(dateFormat)
                                                            .parse(
                                                          controller
                                                                  .investmentDetailsServicesModel
                                                                  .value
                                                                  .data!
                                                                  .first
                                                                  .extra!
                                                                  .dueDate ??
                                                              "",
                                                        ),
                                                      ) +
                                                      ", " +
                                                      DateFormat.y().format(
                                                          DateFormat(dateFormat)
                                                              .parse(
                                                        controller
                                                                .investmentDetailsServicesModel
                                                                .value
                                                                .data!
                                                                .first
                                                                .extra!
                                                                .dueDate ??
                                                            "",
                                                      )) +
                                                      ", " +
                                                      DateFormat.jm().format(
                                                        DateFormat(dateFormat)
                                                            .parse(
                                                          controller
                                                                  .investmentDetailsServicesModel
                                                                  .value
                                                                  .data!
                                                                  .first
                                                                  .extra!
                                                                  .dueDate ??
                                                              "",
                                                        ),
                                                      ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text("",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .black900,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Progress:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .indigoA400,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                              Text(
                                                  "${controller.progressPer.value}%",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14Bluegray200
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .indigoA400,
                                                          height:
                                                              getVerticalSize(
                                                                  0.95))),
                                            ]),
                                        Obx(
                                          () => controller.isLoading.value
                                              ? SizedBox()
                                              : Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(8.00),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      4.00)),
                                                          child: LinearProgressIndicator(
                                                              value: controller
                                                                  .progressVal
                                                                  .value,
                                                              backgroundColor:
                                                                  ColorConstant
                                                                      .gray200,
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<Color>(
                                                                      ColorConstant
                                                                          .indigoA400))))),
                                        ),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // CustomButton(
                                                  //     height: 44,
                                                  //     width: 143,
                                                  //     text: "Withdraw",
                                                  //     variant: ButtonVariant
                                                  //         .OutlineIndigoA400,
                                                  //     shape: ButtonShape
                                                  //         .RoundedBorder9,
                                                  //     padding: ButtonPadding
                                                  //         .PaddingAll11,
                                                  //     onTap: () => Get.toNamed(
                                                  //         AppRoutes
                                                  //             .sendMoneyToBankScreen),
                                                  //     fontStyle: ButtonFontStyle
                                                  //         .GeneralSansMedium14IndigoA400),
                                                  CustomButton(
                                                      height: 44,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.7,
                                                      text: "Withdraw",
                                                      variant: controller
                                                              .enableWithdraw
                                                              .value
                                                          ? ButtonVariant
                                                              .FillLightgreen400
                                                          : ButtonVariant
                                                              .FillGray200,
                                                      shape: ButtonShape
                                                          .RoundedBorder9,
                                                      padding: ButtonPadding
                                                          .PaddingAll11,
                                                      onTap: () {
                                                        if (controller
                                                            .enableWithdraw
                                                            .value) {
                                                          controller.withdrawInvestmentServices(
                                                              controller
                                                                  .investmentDetailsServicesModel
                                                                  .value
                                                                  .data!
                                                                  .first
                                                                  .reference!);
                                                        } else {
                                                          Get.snackbar(
                                                            "Error",
                                                            "You can't withdraw this investment at this time",
                                                            snackPosition:
                                                                SnackPosition
                                                                    .TOP,
                                                            backgroundColor:
                                                                Colors.red,
                                                            colorText:
                                                                Colors.white,
                                                          );
                                                        }
                                                      },
                                                      fontStyle: ButtonFontStyle
                                                          .GeneralSansMedium14)
                                                ]))
                                      ]))),
                      ]),
                      // Padding(
                      //     padding: getPadding(left: 24, top: 26),
                      //     child: Text("lbl_activity".tr,
                      //         overflow: TextOverflow.ellipsis,
                      //         textAlign: TextAlign.start,
                      //         style: AppStyle
                      //             .txtGeneralSansSemibold16Bluegray900
                      //             .copyWith(
                      //                 letterSpacing: getHorizontalSize(0.50),
                      //                 height: getVerticalSize(1.11)))),
                      //   Expanded(
                      //     child: Container(
                      //         padding: getPadding(top: 10),
                      //         margin: getMargin(left: 24, top: 11, right: 24),
                      //         decoration: AppDecoration.fillWhiteA700.copyWith(
                      //             borderRadius:
                      //                 BorderRadiusStyle.roundedBorder12),
                      //         child: Obx(() => ListView.separated(
                      //             padding: getPadding(all: 0),
                      //             physics: BouncingScrollPhysics(),
                      //             shrinkWrap: true,
                      //             separatorBuilder: (context, index) {
                      //               return SizedBox(
                      //                   height: getVerticalSize(4.00));
                      //             },
                      //             itemCount: controller.walletTwoModelObj.value
                      //                 .content17ItemList.length,
                      //             itemBuilder: (context, index) {
                      //               Content17ItemModel model = controller
                      //                   .walletTwoModelObj
                      //                   .value
                      //                   .content17ItemList[index];
                      //               return Content17ItemWidget(model);
                      //             }))),
                      //   )
                    ]))));
  }
}

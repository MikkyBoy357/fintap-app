import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/material.dart';

import 'controller/send_money_controller.dart';

class SendMoneyScreen extends GetWidget<SendMoneyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 24, top: 30, right: 24, bottom: 12),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BkBtn(
                                  margin: getMargin(all: 0),
                                ),
                                Text("lbl_send_money".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGeneralSansSemibold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.50),
                                            height: getVerticalSize(0.99))),
                                HorizontalSpace(width: 40),
                              ]))),
                  Container(
                      margin: getMargin(left: 24, right: 24),
                      padding:
                          getPadding(left: 23, top: 21, right: 23, bottom: 21),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: getPadding(top: 2, bottom: 1),
                                child: InkWell(
                                  onTap: () => Get.toNamed(
                                      AppRoutes.sendMoneyToFriendTwoScreen,
                                      arguments: Get.arguments),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 56,
                                            width: 56,
                                            variant:
                                                IconButtonVariant.FillBlue50,
                                            shape:
                                                IconButtonShape.RoundedBorder13,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgUserIndigoA400)),
                                        Padding(
                                            padding: getPadding(top: 12),
                                            child: Text("lbl_moni_friends".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium12Bluegray900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            0.99))))
                                      ]),
                                )),
                            Padding(
                                padding:
                                    getPadding(left: 28, top: 2, bottom: 1),
                                child: InkWell(
                                  onTap: () => Get.toNamed(
                                      AppRoutes.sendMoneyToBankScreen),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 56,
                                            width: 56,
                                            variant:
                                                IconButtonVariant.FillBlue50,
                                            shape:
                                                IconButtonShape.RoundedBorder13,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgComputerIndigoA400)),
                                        Padding(
                                            padding: getPadding(top: 12),
                                            child: Text("Bank Transfer".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium12Bluegray900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            0.99))))
                                      ]),
                                )),
                            // Padding(
                            //     padding: getPadding(left: 36, top: 2, right: 8),
                            //     child: InkWell(
                            //       onTap: () => Get.toNamed(AppRoutes.payBillScreen),
                            //       child: Column(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             CustomIconButton(
                            //                 height: 56,
                            //                 width: 56,
                            //                 variant: IconButtonVariant.FillBlue50,
                            //                 shape: IconButtonShape.RoundedBorder13,
                            //                 child: CustomImageView(
                            //                     svgPath: ImageConstant
                            //                         .imgCalendarIndigoA400)),
                            //             Padding(
                            //                 padding: getPadding(top: 13),
                            //                 child: Text("lbl_pay_bill".tr,
                            //                     overflow: TextOverflow.ellipsis,
                            //                     textAlign: TextAlign.start,
                            //                     style: AppStyle
                            //                         .txtGeneralSansMedium12Bluegray900
                            //                         .copyWith(
                            //                             height:
                            //                                 getVerticalSize(0.99))))
                            //           ]),
                            //     ))
                          ])),
                  // Padding(
                  //     padding: getPadding(left: 24, top: 25),
                  //     child: Text("msg_last_transaction".tr,
                  //         overflow: TextOverflow.ellipsis,
                  //         textAlign: TextAlign.start,
                  //         style: AppStyle.txtGeneralSansSemibold16Bluegray900
                  //             .copyWith(
                  //                 letterSpacing: getHorizontalSize(0.50),
                  //                 height: getVerticalSize(1.11)))),
                  // Expanded(
                  //   child: Container(
                  //       margin: getMargin(left: 24, top: 12, right: 24),
                  //       decoration: AppDecoration.fillWhiteA700.copyWith(
                  //           borderRadius: BorderRadiusStyle.roundedBorder12),
                  //       child: Obx(() => ListView.separated(
                  //           physics: BouncingScrollPhysics(),
                  //           shrinkWrap: true,
                  //           separatorBuilder: (context, index) {
                  //             return SizedBox(height: getVerticalSize(4.00));
                  //           },
                  //           itemCount: controller.sendMoneyModelObj.value
                  //               .content5ItemList.length,
                  //           itemBuilder: (context, index) {
                  //             Content5ItemModel model = controller
                  //                 .sendMoneyModelObj
                  //                 .value
                  //                 .content5ItemList[index];
                  //             return Content5ItemWidget(model);
                  //           }))),
                  // )
                ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}

import 'controller/security_setting_six_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SecuritySettingSixBottomsheet extends StatelessWidget {
  SecuritySettingSixBottomsheet(this.controller);

  SecuritySettingSixController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(all: 24),
            decoration: AppDecoration.fillGray100,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                        padding: getPadding(top: 1),
                        child: Text("msg_select_recovery".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(0.99)))),
                    CustomImageView(
                        svgPath: ImageConstant.imgCloseGray900,
                        height: getSize(24.00),
                        width: getSize(24.00),
                        margin: getMargin(left: 29, bottom: 2),
                        onTap: () {
                          onTapImgClose();
                        })
                  ]),
                  Container(
                      width: getHorizontalSize(327.00),
                      margin: getMargin(top: 21, bottom: 32),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
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
                                          variant: IconButtonVariant.FillBlue50,
                                          shape: IconButtonShape.CircleBorder20,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMailIndigoA400)),
                                      Padding(
                                          padding: getPadding(left: 12, top: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_email".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray900
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.06))),
                                                Padding(
                                                    padding: getPadding(top: 5),
                                                    child: Text(
                                                        "msg_we_ll_send_you_recover"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: AppStyle
                                                            .txtGeneralSansRegular12Bluegray200
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        0.99))))
                                              ])),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          margin:
                                              getMargin(top: 10, bottom: 10))
                                    ])),
                            Container(
                                margin: getMargin(top: 4),
                                padding: getPadding(
                                    left: 16, top: 13, right: 16, bottom: 13),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          margin: getMargin(top: 2, bottom: 2),
                                          variant: IconButtonVariant.FillBlue50,
                                          shape: IconButtonShape.CircleBorder20,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMobileIndigoA40040x40)),
                                      Padding(
                                          padding: getPadding(left: 12, top: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_phone".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray900
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.06))),
                                                Padding(
                                                    padding: getPadding(top: 5),
                                                    child: Text(
                                                        "msg_we_ll_send_you_recover2"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: AppStyle
                                                            .txtGeneralSansRegular12Bluegray200
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        0.99))))
                                              ])),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          margin:
                                              getMargin(top: 10, bottom: 10))
                                    ]))
                          ]))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}

import 'controller/profile_setting_three_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingThreeBottomsheet extends StatelessWidget {
  ProfileSettingThreeBottomsheet(this.controller);

  ProfileSettingThreeController controller;

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
                        child: Text("msg_change_profile_picture".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(0.99)))),
                    CustomImageView(
                        svgPath: ImageConstant.imgCloseGray900,
                        height: getSize(24.00),
                        width: getSize(24.00),
                        margin: getMargin(left: 36, bottom: 2),
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
                                    left: 12, top: 16, right: 12, bottom: 16),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 2),
                                          child: Text("lbl_choose_photo".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(24.00),
                                          width: getSize(24.00))
                                    ])),
                            Container(
                                margin: getMargin(top: 4),
                                padding: getPadding(
                                    left: 12, top: 16, right: 12, bottom: 16),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 2),
                                          child: Text("lbl_take_photo".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(24.00),
                                          width: getSize(24.00))
                                    ])),
                            Container(
                                margin: getMargin(top: 4),
                                padding: getPadding(
                                    left: 12, top: 16, right: 12, bottom: 16),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 2),
                                          child: Text("lbl_remove_photo".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14Bluegray900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.06)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(24.00),
                                          width: getSize(24.00))
                                    ]))
                          ]))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}

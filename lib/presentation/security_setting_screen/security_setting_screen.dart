import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

import '../account_one_page/models/profile_model.dart';
import '../security_setting_three_screen/controller/security_setting_three_controller.dart';
import '../security_setting_three_screen/security_setting_three_screen.dart';
import 'controller/security_setting_controller.dart';

class SecuritySettingScreen extends GetWidget<SecuritySettingController> {
  @override
  Widget build(BuildContext context) {
    Profile profileData = Get.arguments;
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
              title: AppbarSubtitle(text: "msg_security_setting".tr),
            ),
            body: Container(
                margin: getMargin(left: 24, top: 24, right: 24, bottom: 5),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        // onTap: () => Get.bottomSheet(
                        //     SecuritySettingOneScreen(
                        //         Get.put(SecuritySettingOneController())),
                        //     isScrollControlled: true),
                        child: Container(
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 2),
                                      child: Text("Mobile Number",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("${profileData.phone}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansRegular14IndigoA400
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.27)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(left: 8))
                                ])),
                      ),
                      InkWell(
                        onTap: () => Get.bottomSheet(
                            SecuritySettingThreeScreen(
                                Get.put(SecuritySettingThreeController())),
                            isScrollControlled: true),
                        child: Container(
                            margin: getMargin(top: 4),
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 2),
                                      child: Text("Email Address".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Spacer(),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("${profileData.email}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansRegular14IndigoA400
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.27)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(left: 9))
                                ])),
                      ),
                      InkWell(
                        onTap: () => Get.bottomSheet(
                            SecuritySettingPinScreen(
                                Get.put(SecuritySettingPinController())),
                            isScrollControlled: true),
                        child: Container(
                          margin: getMargin(top: 4),
                          padding: getPadding(
                              left: 12, top: 16, right: 12, bottom: 16),
                          decoration: AppDecoration.outlineGray200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: getPadding(top: 2, bottom: 2),
                                  child: Text("Update PIN",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtGeneralSansMedium14Bluegray900
                                          .copyWith(
                                              height: getVerticalSize(1.06)))),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                rotateifRtl: true,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                margin: getMargin(left: 9),
                              )
                            ],
                          ),
                        ),
                      ),
                      // InkWell(
                      //   onTap: () => Get.bottomSheet(
                      //       SecuritySettingFiveScreen(
                      //           Get.put(SecuritySettingFiveController())),
                      //       isScrollControlled: true),
                      //   child: Container(
                      //       margin: getMargin(top: 4),
                      //       padding: getPadding(
                      //           left: 12, top: 16, right: 12, bottom: 16),
                      //       decoration: AppDecoration.outlineGray2002,
                      //       child: Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Padding(
                      //                 padding: getPadding(top: 3, bottom: 1),
                      //                 child: Text("lbl_change_pin".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.start,
                      //                     style: AppStyle
                      //                         .txtGeneralSansMedium14Bluegray900
                      //                         .copyWith(
                      //                             height:
                      //                                 getVerticalSize(1.06)))),
                      //             CustomImageView(
                      //                 svgPath: ImageConstant.imgArrowright,
                      //                 rotateifRtl: true,
                      //                 height: getSize(24.00),
                      //                 width: getSize(24.00))
                      //           ])),
                      // ),
                      // InkWell(
                      //   onTap: () => Get.bottomSheet(
                      //       SecuritySettingTwoScreen(
                      //           Get.put(SecuritySettingTwoController())),
                      //       isScrollControlled: true),
                      //   child: Container(
                      //       margin: getMargin(top: 4),
                      //       padding: getPadding(
                      //           left: 12, top: 16, right: 12, bottom: 16),
                      //       decoration: AppDecoration.outlineGray2002,
                      //       child: Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Padding(
                      //                 padding: getPadding(top: 3, bottom: 1),
                      //                 child: Text("lbl_change_password".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.start,
                      //                     style: AppStyle
                      //                         .txtGeneralSansMedium14Bluegray900
                      //                         .copyWith(
                      //                             height:
                      //                                 getVerticalSize(1.06)))),
                      //             CustomImageView(
                      //                 svgPath: ImageConstant.imgArrowright,
                      //                 rotateifRtl: true,
                      //                 height: getSize(24.00),
                      //                 width: getSize(24.00))
                      //           ])),
                      // ),
                      InkWell(
                        onTap: () => controller.isSelectedSwitch.value =
                            !controller.isSelectedSwitch.value,
                        child: Container(
                            margin: getMargin(top: 4),
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray2002,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 2),
                                      child: Text("Dark Mode",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Obx(() => CustomSwitch(
                                      value: controller.isSelectedSwitch.value,
                                      onChanged: (value) {
                                        controller.isSelectedSwitch.value =
                                            value;
                                      }))
                                ])),
                      ),
                      // InkWell(
                      //   onTap: () => Get.bottomSheet(
                      //       SecuritySettingFourScreen(
                      //           Get.put(SecuritySettingFourController())),
                      //       isScrollControlled: true),
                      //   child: Container(
                      //       margin: getMargin(top: 4),
                      //       padding: getPadding(
                      //           left: 12, top: 16, right: 12, bottom: 16),
                      //       decoration: AppDecoration.fillWhiteA700,
                      //       child: Align(
                      //           alignment: Alignment.center,
                      //           child: Row(
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 Padding(
                      //                     padding:
                      //                         getPadding(top: 3, bottom: 1),
                      //                     child: Text(
                      //                         "msg_security_questions".tr,
                      //                         overflow: TextOverflow.ellipsis,
                      //                         textAlign: TextAlign.start,
                      //                         style: AppStyle
                      //                             .txtGeneralSansMedium14Bluegray900
                      //                             .copyWith(
                      //                                 height: getVerticalSize(
                      //                                     1.06)))),
                      //                 Row(
                      //                   children: [
                      //                     Obx(() => CustomSwitch(
                      //                         alignment: Alignment.centerRight,
                      //                         value: controller
                      //                             .isSelectedSwitch1.value,
                      //                         onChanged: (value) {
                      //                           controller.isSelectedSwitch1
                      //                               .value = value;
                      //                         })),
                      //                     CustomImageView(
                      //                         rotateifRtl: true,
                      //                         svgPath:
                      //                             ImageConstant.imgArrowright,
                      //                         height: getSize(24.00),
                      //                         width: getSize(24.00),
                      //                         margin: getMargin(left: 10)),
                      //                   ],
                      //                 )
                      //               ]))),
                      // )
                    ]))));
  }

  onTapArrowleft33() {
    Get.back();
  }
}

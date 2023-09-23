import 'package:fintap/widgets/bk_btn.dart';

import 'controller/notification_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
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
              title: AppbarSubtitle(text: "lbl_notification".tr),
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
                        onTap: () => controller.isSelectedSwitch.value =
                            !controller.isSelectedSwitch.value,
                        child: Container(
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("lbl_payment".tr,
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
                      InkWell(
                        onTap: () => controller.isSelectedSwitch1.value =
                            !controller.isSelectedSwitch1.value,
                        child: Container(
                            margin: getMargin(top: 4),
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("lbl_receive_money".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Obx(() => CustomSwitch(
                                      value: controller.isSelectedSwitch1.value,
                                      onChanged: (value) {
                                        controller.isSelectedSwitch1.value =
                                            value;
                                      }))
                                ])),
                      ),
                      InkWell(
                        onTap: () => controller.isSelectedSwitch2.value =
                            !controller.isSelectedSwitch2.value,
                        child: Container(
                            margin: getMargin(top: 4),
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("lbl_send_money".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Obx(() => CustomSwitch(
                                      value: controller.isSelectedSwitch2.value,
                                      onChanged: (value) {
                                        controller.isSelectedSwitch2.value =
                                            value;
                                      }))
                                ])),
                      ),
                      InkWell(
                        onTap: () => controller.isSelectedSwitch3.value =
                            !controller.isSelectedSwitch3.value,
                        child: Container(
                            margin: getMargin(top: 4),
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 2),
                                      child: Text("lbl_transaction".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Obx(() => CustomSwitch(
                                      value: controller.isSelectedSwitch3.value,
                                      onChanged: (value) {
                                        controller.isSelectedSwitch3.value =
                                            value;
                                      }))
                                ])),
                      )
                    ]))));
  }

  onTapArrowleft32() {
    Get.back();
  }
}

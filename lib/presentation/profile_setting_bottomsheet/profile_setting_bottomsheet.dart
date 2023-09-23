import 'package:fintap/widgets/spacing.dart';

import 'controller/profile_setting_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingBottomsheet extends StatelessWidget {
  ProfileSettingBottomsheet(this.controller);

  ProfileSettingController controller;

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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HorizontalSpace(width: 24),
                        Text("lbl_gender".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(0.99))),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseGray900,
                            height: getSize(24.00),
                            width: getSize(24.00),
                            margin: getMargin(bottom: 1),
                            onTap: () {
                              onTapImgClose();
                            })
                      ]),
                  Padding(
                      padding: getPadding(top: 22, bottom: 32),
                      child: Obx(
                        () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                  height: 44,
                                  width: 155,
                                  text: "lbl_male".tr,
                                  onTap: () => controller.isMale.value = true,
                                  variant: controller.isMale.value
                                      ? ButtonVariant.FillIndigoA400
                                      : ButtonVariant.OutlineGray300,
                                  shape: ButtonShape.CircleBorder22,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle: controller.isMale.value == true
                                      ? ButtonFontStyle
                                          .GeneralSansMedium14WhiteA700
                                      : ButtonFontStyle.GeneralSansMedium14),
                              CustomButton(
                                  height: 44,
                                  width: 155,
                                  text: "lbl_female".tr,
                                  onTap: () => controller.isMale.value = false,
                                  variant: controller.isMale.value == false
                                      ? ButtonVariant.FillIndigoA400
                                      : ButtonVariant.OutlineGray300,
                                  shape: ButtonShape.CircleBorder22,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle: controller.isMale.value == false
                                      ? ButtonFontStyle
                                          .GeneralSansMedium14WhiteA700
                                      : ButtonFontStyle.GeneralSansMedium14)
                            ]),
                      ))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}

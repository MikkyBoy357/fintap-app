import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/material.dart';

import 'controller/security_setting_three_controller.dart';

// ignore_for_file: must_be_immutable
class SecuritySettingThreeScreen extends StatelessWidget {
  SecuritySettingThreeController controller;
  SecuritySettingThreeScreen(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .98,
        width: size.width,
        margin: getMargin(top: 4),
        padding: getPadding(left: 24, top: 23, right: 24, bottom: 23),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                HorizontalSpace(width: 24),
                Text("lbl_email_address".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold18.copyWith(
                        letterSpacing: getHorizontalSize(0.50),
                        height: getVerticalSize(0.99))),
                CustomImageView(
                  svgPath: ImageConstant.imgCloseGray900,
                  onTap: () => Get.back(),
                  height: getSize(24.00),
                  width: getSize(24.00),
                )
              ]),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.emailOneController,
                  hintText: "lbl_email_address".tr,
                  margin: getMargin(top: 31),
                  padding: TextFormFieldPadding.PaddingAll16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  }),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_save".tr,
              )
            ]));
  }

  onTapArrowleft35() {
    Get.back();
  }
}

class SecuritySettingPinScreen extends StatelessWidget {
  SecuritySettingPinController controller;
  SecuritySettingPinScreen(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .98,
        width: size.width,
        margin: getMargin(top: 4),
        padding: getPadding(left: 24, top: 23, right: 24, bottom: 23),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                HorizontalSpace(width: 24),
                Text("Update PIN",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold18.copyWith(
                        letterSpacing: getHorizontalSize(0.50),
                        height: getVerticalSize(0.99))),
                CustomImageView(
                  svgPath: ImageConstant.imgCloseGray900,
                  onTap: () => Get.back(),
                  height: getSize(24.00),
                  width: getSize(24.00),
                )
              ]),
              VerticalSpace(height: 30),
              Text(
                  "Default PIN is 1234, change your PIN for advanced security as this PIN is required in completing any transaction on FinTap"),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.pinController,
                  hintText: "lbl_email_address".tr,
                  margin: getMargin(top: 31),
                  padding: TextFormFieldPadding.PaddingAll16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  }),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_save".tr,
              )
            ]));
  }

  onTapArrowleft35() {
    Get.back();
  }
}

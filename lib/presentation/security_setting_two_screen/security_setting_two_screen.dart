import 'package:fintap/widgets/spacing.dart';

import '../security_setting_six_bottomsheet/controller/security_setting_six_controller.dart';
import '../security_setting_six_bottomsheet/security_setting_six_bottomsheet.dart';
import 'controller/security_setting_two_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SecuritySettingTwoScreen extends StatelessWidget {
  SecuritySettingTwoScreen(this.controller);
  SecuritySettingTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height * .98,
        margin: getMargin(top: 4),
        padding: getPadding(all: 24),
        decoration: AppDecoration.fillGray100,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HorizontalSpace(width: 24),
                    Padding(
                        padding: getPadding(top: 1),
                        child: Text("lbl_change_password".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(0.99)))),
                    CustomImageView(
                        svgPath: ImageConstant.imgCloseGray900,
                        height: getSize(24.00),
                        width: getSize(24.00),
                        onTap: () => Get.back(),
                        margin: getMargin(bottom: 2))
                  ])),
          Obx(() => CustomTextFormField(
              width: size.width,
              focusNode: FocusNode(),
              controller: controller.inputController,
              hintText: "msg_current_password".tr,
              margin: getMargin(top: 29),
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                      margin:
                          getMargin(left: 30, top: 14, right: 16, bottom: 14),
                      child: CustomImageView(
                        imagePath: controller.isShowPassword.value
                            ? ImageConstant.eyeOn
                            : ImageConstant.eyeOff,
                        color: ColorConstant.blueGray500,
                      ))),
              suffixConstraints:
                  BoxConstraints(maxHeight: getVerticalSize(52.00)),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "Please enter valid password";
                }
                return null;
              },
              isObscureText: !controller.isShowPassword.value)),
          Obx(() => CustomTextFormField(
              width: size.width,
              focusNode: FocusNode(),
              controller: controller.inputOneController,
              hintText: "lbl_new_password".tr,
              margin: getMargin(top: 16),
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword1.value =
                        !controller.isShowPassword1.value;
                  },
                  child: Container(
                      margin:
                          getMargin(left: 30, top: 14, right: 16, bottom: 14),
                      child: CustomImageView(
                        imagePath: controller.isShowPassword1.value
                            ? ImageConstant.eyeOn
                            : ImageConstant.eyeOff,
                        color: ColorConstant.blueGray500,
                      ))),
              suffixConstraints:
                  BoxConstraints(maxHeight: getVerticalSize(52.00)),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "Please enter valid password";
                }
                return null;
              },
              isObscureText: !controller.isShowPassword1.value)),
          Obx(() => CustomTextFormField(
              width: size.width,
              focusNode: FocusNode(),
              controller: controller.inputTwoController,
              hintText: "msg_repeat_new_password".tr,
              margin: getMargin(top: 16),
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword2.value =
                        !controller.isShowPassword2.value;
                  },
                  child: Container(
                      margin:
                          getMargin(left: 30, top: 14, right: 16, bottom: 14),
                      child: CustomImageView(
                        imagePath: controller.isShowPassword2.value
                            ? ImageConstant.eyeOn
                            : ImageConstant.eyeOff,
                        color: ColorConstant.blueGray500,
                      ))),
              suffixConstraints:
                  BoxConstraints(maxHeight: getVerticalSize(52.00)),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "Please enter valid password";
                }
                return null;
              },
              isObscureText: !controller.isShowPassword2.value)),
          Spacer(),
          Text("msg_i_forgot_my_password".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansSemibold16
                  .copyWith(height: getVerticalSize(1.11))),
          CustomButton(
              height: 56,
              width: size.width,
              text: "lbl_change_password".tr,
              onTap: () => Get.bottomSheet(
                  SecuritySettingSixBottomsheet(
                      Get.put(SecuritySettingSixController())),
                  isScrollControlled: true),
              margin: getMargin(top: 31, bottom: 16))
        ]));
  }

  onTapArrowleft38() {
    Get.back();
  }
}

import 'controller/top_up_with_paypal_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TopUpWithPaypalScreen extends GetWidget<TopUpWithPaypalController> {
  TopUpWithPaypalController controller;

  TopUpWithPaypalScreen(this.controller);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .98,
        width: size.width,
        margin: getMargin(top: 4),
        padding: getPadding(all: 24),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                    padding: getPadding(top: 1),
                    child: Text("lbl_paypal".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGeneralSansSemibold18.copyWith(
                            letterSpacing: getHorizontalSize(0.50),
                            height: getVerticalSize(0.99)))),
                CustomImageView(
                    svgPath: ImageConstant.imgCloseGray900,
                    height: getSize(24.00),
                    width: getSize(24.00),
                    margin: getMargin(left: 109, bottom: 2))
              ]),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.inputController,
                  hintText: "msg_enter_paypal_email".tr,
                  margin: getMargin(top: 29),
                  padding: TextFormFieldPadding.PaddingT15_1,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                      margin:
                          getMargin(left: 16, top: 14, right: 8, bottom: 14),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMailBlueGray500)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(52.00)),
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
                text: "msg_continue_to_paypal".tr,
                margin: getMargin(top: 20, bottom: 16),
                onTap: () => Get.toNamed(AppRoutes.topUpSuccessScreen),
              )
            ]));
  }

  onTapArrowleft10() {
    Get.back();
  }
}

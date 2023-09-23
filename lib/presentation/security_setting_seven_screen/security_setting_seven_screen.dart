import 'package:fintap/widgets/spacing.dart';

import 'controller/security_setting_seven_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

//ignore: must_be_immutable
class SecuritySettingSevenScreen extends StatelessWidget {
  SecuritySettingSevenScreen(this.controller);
  SecuritySettingSevenController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height * .98,
        margin: getMargin(top: 4),
        padding: getPadding(all: 24),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HorizontalSpace(width: 24),
                        Padding(
                            padding: getPadding(top: 1),
                            child: Text("lbl_change_pin".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtGeneralSansSemibold18
                                    .copyWith(
                                        letterSpacing: getHorizontalSize(0.50),
                                        height: getVerticalSize(0.99)))),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseGray900,
                            onTap: () => Get.back(),
                            height: getSize(24.00),
                            width: getSize(24.00),
                            margin: getMargin(bottom: 2))
                      ])),
              Padding(
                  padding: getPadding(top: 30),
                  child: Text("lbl_new_pin".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtGeneralSansSemibold16Bluegray900
                          .copyWith(
                              letterSpacing: getHorizontalSize(0.50),
                              height: getVerticalSize(1.11)))),
              Padding(
                  padding: getPadding(top: 12),
                  child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      obscureText: false,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      enableActiveFill: true,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) {},
                      pinTheme: PinTheme(
                          fieldHeight: getHorizontalSize(44.00),
                          fieldWidth: getHorizontalSize(44.00),
                          shape: PinCodeFieldShape.box,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(8.00)),
                          selectedFillColor: ColorConstant.whiteA700,
                          activeFillColor: ColorConstant.whiteA700,
                          inactiveFillColor: ColorConstant.whiteA700,
                          inactiveColor: ColorConstant.fromHex("#1212121D"),
                          selectedColor: ColorConstant.fromHex("#1212121D"),
                          activeColor: ColorConstant.fromHex("#1212121D")))),
              Spacer(),
              CustomButton(
                  height: 56,
                  width: size.width,
                  text: "lbl_change_pin".tr,
                  onTap: () => Get.back(),
                  margin: getMargin(bottom: 16))
            ]));
  }
}

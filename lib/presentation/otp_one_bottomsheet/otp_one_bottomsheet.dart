import 'controller/otp_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OtpOneBottomsheet extends StatelessWidget {
  OtpOneBottomsheet(this.controller);

  OtpOneController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: getPadding(
          left: 24,
          top: 32,
          right: 24,
          bottom: 32,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 56,
              width: 56,
              variant: IconButtonVariant.FillBlue50,
              child: CustomImageView(
                svgPath: ImageConstant.imgLock,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 23,
              ),
              child: Text(
                "msg_otp_verification".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansSemibold24Bluegray900.copyWith(
                  height: getVerticalSize(
                    0.99,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                322.00,
              ),
              margin: getMargin(
                top: 13,
              ),
              child: Text(
                "msg_the_otp_code_will".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtGeneralSansRegular16Bluegray500.copyWith(
                  height: getVerticalSize(
                    1.11,
                  ),
                ),
              ),
            ),
            CustomButton(
              height: 56,
              width: size.width,
              text: "msg_send_otp_via_sms".tr,
              margin: getMargin(top: 46, left: 24, right: 24),
              onTap: () => Get.offNamed(AppRoutes.enterOtpScreen),
              padding: ButtonPadding.PaddingT16,
              prefixWidget: Container(
                margin: getMargin(
                  right: 8,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgMobileGray900,
                ),
              ),
            ),
            CustomButton(
              height: 56,
              width: size.width,
              text: "msg_send_otp_via_email".tr,
              margin: getMargin(top: 16, bottom: 8, left: 24, right: 24),
              onTap: () => Get.offNamed(AppRoutes.enterOtpScreen),
              padding: ButtonPadding.PaddingT16,
              prefixWidget: Container(
                margin: getMargin(
                  right: 8,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgMail,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

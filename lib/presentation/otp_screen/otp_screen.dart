import 'controller/otp_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends GetWidget<OtpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.indigoA400,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 50,
                ),
                child: Text(
                  "msg_enter_the_otp_code".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtGeneralSansSemibold24.copyWith(
                    height: getVerticalSize(
                      0.99,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_code_sent_via_sms2".tr,
                        style: TextStyle(
                          color: ColorConstant.blue100,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'General Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            1.11,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_44123456789".tr,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'General Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            1.11,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: getPadding(top: 40, left: 24, right: 24),
                child: Obx(
                  () => PinCodeTextField(
                    appContext: context,
                    controller: controller.otpController.value,
                    length: 6,
                    obscureText: false,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    autoDismissKeyboard: true,
                    enableActiveFill: true,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {},
                    pinTheme: PinTheme(
                      fieldHeight: getHorizontalSize(
                        44.00,
                      ),
                      fieldWidth: getHorizontalSize(
                        44.00,
                      ),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      selectedFillColor: ColorConstant.whiteA700,
                      activeFillColor: ColorConstant.whiteA700,
                      inactiveFillColor: ColorConstant.whiteA700,
                      inactiveColor: ColorConstant.fromHex("#1212121D"),
                      selectedColor: ColorConstant.fromHex("#1212121D"),
                      activeColor: ColorConstant.fromHex("#1212121D"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 41,
                ),
                child: Text(
                  "lbl_resend_code".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtGeneralSansSemibold16WhiteA700.copyWith(
                    height: getVerticalSize(
                      1.11,
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_sign_in".tr,
                margin: getMargin(top: 31, bottom: 20, right: 24, left: 24),
                onTap: () => Get.offAllNamed(AppRoutes.homeContainerScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

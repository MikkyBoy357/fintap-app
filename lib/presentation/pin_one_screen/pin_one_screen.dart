import 'controller/pin_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinOneScreen extends GetWidget<PinOneController> {
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
                  "lbl_create_pin".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtGeneralSansSemibold24.copyWith(
                    height: getVerticalSize(
                      0.99,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  312.00,
                ),
                margin: getMargin(
                  top: 9,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor2".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtGeneralSansRegular16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.50,
                    ),
                    height: getVerticalSize(
                      1.11,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 38, left: 24, right: 24),
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
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_create_account".tr,
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

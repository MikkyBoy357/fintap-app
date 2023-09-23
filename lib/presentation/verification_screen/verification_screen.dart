
import 'controller/verification_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends GetWidget<VerificationController> {
 final  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // controller.token.value = resetToken;
    String token = Get.arguments;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.indigoA400,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 24,
            top: 84,
            right: 24,
            bottom: 54,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 21,
                ),
                color: ColorConstant.blue50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Container(
                  height: getSize(
                    80.00,
                  ),
                  width: getSize(
                    80.00,
                  ),
                  padding: getPadding(
                    all: 16,
                  ),
                  decoration: AppDecoration.fillBlue50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgIconIndigoA400,
                        height: getSize(
                          48.00,
                        ),
                        width: getSize(
                          48.00,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 39,
                ),
                child: Text(
                  "msg_check_your_email".tr,
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
                  240.00,
                ),
                margin: getMargin(
                  top: 9,
                ),
                child: Text(
                  "msg_we_have_sent_a_recovery_otp".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtGeneralSansRegular16.copyWith(
                    height: getVerticalSize(
                      1.11,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_continue".tr,
                margin: getMargin(top: 38, right: 24, left: 24),
                // onTap: () => print(token),
                onTap: () => Get.toNamed(AppRoutes.createNewPasswordScreen,
                    arguments: token),

                // onTap: () => Get.off(() => CreateNewPasswordScreen(),),
              ),
              // CustomButton(
              //   height: 56,
              //   width: size.width,
              //   text: "msg_skip_i_ll_confirm".tr,
              //   margin: getMargin(
              //     top: 16,
              //     right: 24,
              //     left: 24
              //   ),
              //   variant: ButtonVariant.OutlineWhiteA700,
              //   fontStyle: ButtonFontStyle.GeneralSansMedium16WhiteA700,
              // ),
              Spacer(),
              Container(
                width: getHorizontalSize(
                  312.00,
                ),
                child: InkWell(
                  onTap: () => Get.back(),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_did_not_receive2".tr,
                          style: TextStyle(
                            color: ColorConstant.blue100,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400,
                            height: getVerticalSize(
                              1.11,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "msg_try_another_email".tr,
                          style: TextStyle(
                            color: ColorConstant.lightGreen400,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w600,
                            height: getVerticalSize(
                              1.11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

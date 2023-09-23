import 'package:flutter/cupertino.dart';

import 'controller/create_new_password_controller.dart';
import 'package:fintap/core/app_export.dart';

import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String token = Get.arguments;
    return SafeArea(
        top: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.gray200,
          body: Form(
            key: _formKey,
            child: Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    padding: getPadding(
                      left: 24,
                      top: 40,
                      right: 24,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillIndigoA400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 44,
                          width: 44,
                          variant: IconButtonVariant.FillWhiteA700,
                          shape: IconButtonShape.RoundedBorder13,
                          padding: IconButtonPadding.PaddingAll7,
                          child: CustomImageView(
                            imagePath: ImageConstant.appLogo,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 23,
                          ),
                          child: Text(
                            "msg_create_new_password".tr,
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
                            306.00,
                          ),
                          margin: getMargin(
                            top: 9,
                            bottom: 18,
                          ),
                          child: Text(
                            "msg_your_new_password".tr,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansRegular16.copyWith(
                              height: getVerticalSize(
                                1.11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    controller: controller.otpController,
                    hintText: "lbl_enter_otp".tr,
                    margin: getMargin(top: 32, left: 24, right: 24),
                    textInputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null) {
                        return "Please enter valid OTP code";
                      }
                      return null;
                    },
                    isObscureText: false,
                  ),
                  Obx(
                    () => CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: controller.passwordController,
                      hintText: "lbl_enter_password".tr,
                      margin: getMargin(top: 32, left: 24, right: 24),
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword.value =
                              !controller.isShowPassword.value;
                        },
                        child: Container(
                          margin: getMargin(
                            left: 12,
                            top: 14,
                            right: 16,
                            bottom: 14,
                          ),
                          child: CustomImageView(
                            imagePath: controller.isShowPassword.value
                                ? ImageConstant.eyeOn
                                : ImageConstant.eyeOff,
                            color: ColorConstant.blueGray500,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          52.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: !controller.isShowPassword.value,
                    ),
                  ),
                  Obx(
                    () => CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: controller.confirmPasswordController,
                      hintText: "msg_confirm_password".tr,
                      margin:
                          getMargin(top: 24, bottom: 5, left: 24, right: 24),
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword1.value =
                              !controller.isShowPassword1.value;
                        },
                        child: Container(
                          margin: getMargin(
                            left: 30,
                            top: 14,
                            right: 16,
                            bottom: 14,
                          ),
                          child: CustomImageView(
                            imagePath: controller.isShowPassword1.value
                                ? ImageConstant.eyeOn
                                : ImageConstant.eyeOff,
                            color: ColorConstant.blueGray500,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          52.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: !controller.isShowPassword1.value,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Obx(
            () => controller.isLoading.value
                ? Container(
                    margin: getPadding(
                      left: 24,
                      right: 24,
                      bottom: 20,
                    ),
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: ColorConstant.lightGreen400,
                      radius: 20,
                    ),
                  )
                : CustomButton(
                    height: 56,
                    width: size.width,
                    margin: getPadding(
                      left: 24,
                      right: 24,
                      bottom: 20,
                    ),
                    text: "lbl_reset_password".tr,
                    // onTap: () => Get.offAllNamed(AppRoutes.homeContainerScreen),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        if (controller.passwordController.text !=
                            controller.confirmPasswordController.text) {
                          Get.snackbar(
                            "Error".tr,
                            "Password not match".tr,
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                            snackPosition: SnackPosition.TOP,
                          );
                        } else {
                          controller.resetPassword(token);
                        }

                        // controller.resetPassword();
                      }
                    },
                  ),
          ),
        ));
  }
}

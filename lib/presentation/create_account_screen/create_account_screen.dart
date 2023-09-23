import 'package:flutter/cupertino.dart';

import '../../core/utils/no_space_input_formatter.dart';
import 'controller/create_account_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/custom_phone_number.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CreateAccountScreen extends GetWidget<CreateAccountController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  CreateAccountController createAccountController = Get.put(
    CreateAccountController(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray200,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    padding: getPadding(
                      left: 24,
                      top: 12,
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
                            "lbl_create_account".tr,
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
                            top: 9,
                            bottom: 19,
                          ),
                          child: InkWell(
                            onTap: () =>
                                Get.offNamed(AppRoutes.signInWithEmailScreen),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_already".tr,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
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
                                    text: "msg_have_an_account".tr,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
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
                                    text: "lbl_sign_in".tr,
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
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    inputFormatters: [
                      NoSpaceInputFormatter()
                    ], // Apply the custom formatter here
                    controller: controller.firstNameController,
                    hintText: "msg_enter_your_first_name".tr,
                    margin: getMargin(top: 32, left: 24, right: 24),
                    padding: TextFormFieldPadding.PaddingT15,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null) {
                        return "Please enter your first name";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    inputFormatters: [
                      NoSpaceInputFormatter()
                    ], // Apply the custom formatter here
                    controller: controller.lastNameController,
                    hintText: "msg_enter_your_last_name".tr,
                    margin: getMargin(top: 32, left: 24, right: 24),
                    padding: TextFormFieldPadding.PaddingT15,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null) {
                        return "Please enter your last name";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    inputFormatters: [
                      NoSpaceInputFormatter()
                    ], // Apply the custom formatter here
                    controller: controller.emailController,
                    hintText: "msg_enter_your_email".tr,
                    margin: getMargin(top: 32, left: 24, right: 24),
                    padding: TextFormFieldPadding.PaddingT15,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    inputFormatters: [
                      NoSpaceInputFormatter()
                    ], // Apply the custom formatter here
                    controller: controller.refCodeController,
                    hintText: "Enter Referral Code (Optional)",
                    margin: getMargin(top: 32, left: 24, right: 24),
                    padding: TextFormFieldPadding.PaddingT15,
                    textInputType: TextInputType.text,
                  ),
                  Padding(
                    padding: getPadding(top: 24, left: 24, right: 24),
                    child: Obx(
                      () => CustomPhoneNumber(
                        country: controller.selectedCountry.value,
                        controller: controller.phoneNumberController,
                        onTap: (Country country) {
                          controller.selectedCountry.value = country;
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      inputFormatters: [
                        NoSpaceInputFormatter()
                      ], // Apply the custom formatter here
                      controller: controller.passwordController,
                      hintText: "lbl_create_password".tr,
                      margin: getMargin(top: 24, left: 24, right: 24),
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword.value =
                              !controller.isShowPassword.value;
                        },
                        child: Container(
                          margin: getMargin(
                            left: 30,
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
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        if (!value.contains(RegExp(r'[A-Z]'))) {
                          return 'Password must contain an uppercase letter';
                        }
                        if (!value.contains(RegExp(r'[a-z]'))) {
                          return 'Password must contain a lowercase letter';
                        }
                        if (!value.contains(RegExp(r'[0-9]'))) {
                          return 'Password must contain a number';
                        }
                        if (!value
                            .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                          return 'Password must contain a character';
                        }
                        return null; // Return null if validation passes
                      },
                      isObscureText: !controller.isShowPassword.value,
                    ),
                  ),
                  Obx(
                    () => CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      inputFormatters: [
                        NoSpaceInputFormatter()
                      ], // Apply the custom formatter here
                      controller: controller.confirmPasswordController,
                      hintText: "lbl_repeat_password".tr,
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
                        if (value != controller.passwordController.text) {
                          return "Password does not match";
                        }
                        return null;
                      },
                      isObscureText: !controller.isShowPassword1.value,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Obx(
          () => createAccountController.isLoading.value
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
                  margin: getPadding(
                    left: 24,
                    right: 24,
                    bottom: 20,
                  ),
                  width: size.width,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      createAccountController.registerWithEmail();
                    }
                  },
                  // onTap: () => Get.offNamed(AppRoutes.enterOtpScreen),
                  // onTap: () => Get.bottomSheet(OtpOneBottomsheet(OtpOneController())),

                  text: "lbl_create_account".tr,
                ),
        ),
      ),
    );
  }
}

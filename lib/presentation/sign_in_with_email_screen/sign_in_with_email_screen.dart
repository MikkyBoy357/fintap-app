import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/view_models/auth_providers/auth_provider.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/utils/no_space_input_formatter.dart';
import 'controller/sign_in_with_email_controller.dart';

//ignore: must_be_immutable
class SignInWithEmailScreen extends GetWidget<SignInWithEmailController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignInWithEmailController signInWithEmailController =
      Get.put(SignInWithEmailController());

  @override
  Widget build(BuildContext context) {
    var authViewModel = Provider.of<AuthProvider>(context, listen: false);

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
                      top: 30,
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
                            top: 24,
                          ),
                          child: Text(
                            "lbl_welcome_back".tr,
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
                            bottom: 20,
                          ),
                          child: InkWell(
                            onTap: () =>
                                Get.offNamed(AppRoutes.createAccountScreen),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
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
                                    text: "lbl_create_account".tr,
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
                    inputFormatters: [NoSpaceInputFormatter()],
                    controller: controller.emailInputController,
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
                  Obx(
                    () => CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: controller.passwordInputOneController,
                      hintText: "lbl_password".tr,
                      margin: getMargin(top: 24, left: 24, right: 24),
                      textInputAction: TextInputAction.done,
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
                        // if (value == null ||
                        //     (!isValidPassword(value, isRequired: true))) {
                        if (value == null || value.isEmpty) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: !controller.isShowPassword.value,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.forgotPasswordScreen),
                    child: Text(
                      "lbl_forgot_password".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtGeneralSansSemibold16.copyWith(
                        height: getVerticalSize(
                          1.11,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // CustomButton(
                  //   height: 56,
                  //   width: size.width,
                  //   text: "msg_sign_in_with_phone".tr,
                  //   margin: getMargin(
                  //     top: 31,
                  //     left: 24,
                  //     right: 24,
                  //     bottom: 16,
                  //   ),
                  //   onTap: () => Get.offNamed(AppRoutes.signInWithPhoneScreen),
                  //   variant: ButtonVariant.OutlineIndigoA400,
                  //   fontStyle: ButtonFontStyle.GeneralSansMedium16IndigoA400,
                  // ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Obx(
            () => signInWithEmailController.isLoading.value
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
                    // onTap: () => Get.toNamed(AppRoutes.pinScreen),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        signInWithEmailController.loginWithEmail();
                      }
                    },

                    text: "lbl_sign_in".tr,
                  ),
          )),
    );
  }
}

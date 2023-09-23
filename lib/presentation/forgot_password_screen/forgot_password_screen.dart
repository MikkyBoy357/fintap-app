import 'package:flutter/cupertino.dart';

import 'controller/forgot_password_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
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
                          top: 24,
                        ),
                        child: Text(
                          "lbl_reset_password".tr,
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
                          322.00,
                        ),
                        margin: getMargin(
                          top: 9,
                          bottom: 18,
                        ),
                        child: Text(
                          "msg_enter_the_email".tr,
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
                  controller: controller.emailInputController,
                  hintText: "msg_enter_your_email".tr,
                  margin: getMargin(top: 32, left: 24, right: 24),
                  padding: TextFormFieldPadding.PaddingT15,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                Spacer(),
                CustomButton(
                  height: 56,
                  width: size.width,
                  text: "lbl_back_to_sign_in".tr,
                  margin: getMargin(bottom: 16, left: 24, right: 24),
                  onTap: () => Get.back(),
                  variant: ButtonVariant.OutlineIndigoA400,
                  fontStyle: ButtonFontStyle.GeneralSansMedium16IndigoA400,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Obx(() => controller.isLoading.value
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
                // onTap: () => Get.toNamed(AppRoutes.verificationScreen),
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    forgotPasswordController.forgotPassword();
                  }
                },
                width: size.width,
                text: "msg_send_instructions".tr,
              )),
      ),
    );
  }
}

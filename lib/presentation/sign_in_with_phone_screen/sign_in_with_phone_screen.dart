import 'controller/sign_in_with_phone_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class SignInWithPhoneScreen extends GetWidget<SignInWithPhoneController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                          svgPath: ImageConstant.imgHome,
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
                Padding(
                  padding: getPadding(top: 32, left: 24, right: 24),
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
                Spacer(),
                CustomButton(
                  height: 56,
                  width: size.width,
                  text: "msg_sign_in_with_email".tr,
                  margin: getMargin(bottom: 16, left: 24, right: 24),
                  onTap: () => Get.offNamed(AppRoutes.signInWithEmailScreen),
                  variant: ButtonVariant.OutlineIndigoA400,
                  fontStyle: ButtonFontStyle.GeneralSansMedium16IndigoA400,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: 56,
          margin: getPadding(
            left: 24,
            right: 24,
            bottom: 20,
          ),
          width: size.width,
          text: "lbl_sign_in".tr,
          onTap: () => Get.offNamed(AppRoutes.pinScreen),
        ),
      ),
    );
  }
}

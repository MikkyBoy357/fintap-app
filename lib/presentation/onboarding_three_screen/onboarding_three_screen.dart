import 'controller/onboarding_three_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgSlideGray3008x327,
                height: getVerticalSize(
                  8.00,
                ),
                width: getHorizontalSize(
                  327.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
              ),
              Container(
                height: getVerticalSize(
                  731.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 17,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          556.00,
                        ),
                        width: getHorizontalSize(
                          314.00,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: getSize(
                                  278.00,
                                ),
                                width: getSize(
                                  278.00,
                                ),
                                margin: getMargin(
                                  top: 25,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray100,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      139.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  556.00,
                                ),
                                width: getHorizontalSize(
                                  314.00,
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgTest556x314,
                                      height: getVerticalSize(
                                        556.00,
                                      ),
                                      width: getHorizontalSize(
                                        314.00,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 5,
                                          top: 42,
                                          right: 6,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              variant:
                                                  IconButtonVariant.FillBlue100,
                                              shape: IconButtonShape
                                                  .RoundedBorder16,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              alignment: Alignment.centerRight,
                                              child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCheckmark,
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              margin: getMargin(
                                                top: 89,
                                              ),
                                              variant:
                                                  IconButtonVariant.FillBlue100,
                                              shape: IconButtonShape
                                                  .RoundedBorder16,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgMobile,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: size.width,
                        padding: getPadding(
                          left: 24,
                          top: 40,
                          right: 24,
                          bottom: 40,
                        ),
                        decoration: AppDecoration.fillIndigoA400,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "msg_stay_safe_with_moni".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style:
                                    AppStyle.txtGeneralSansSemibold24.copyWith(
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
                                top: 19,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style:
                                    AppStyle.txtGeneralSansRegular16.copyWith(
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
                              padding: getPadding(
                                top: 54,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomButton(
                                    height: 56,
                                    width: 155,
                                    text: "lbl_sign_in".tr,
                                    variant: ButtonVariant.OutlineWhiteA700,
                                    fontStyle: ButtonFontStyle
                                        .GeneralSansMedium16WhiteA700,
                                  ),
                                  CustomButton(
                                    height: 56,
                                    width: 155,
                                    text: "lbl_get_started".tr,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

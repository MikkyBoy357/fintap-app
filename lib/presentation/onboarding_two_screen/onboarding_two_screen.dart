import 'controller/onboarding_two_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: getVerticalSize(
                    564.00,
                  ),
                  width: getHorizontalSize(
                    328.00,
                  ),
                  margin: getMargin(
                    top: 12,
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
                            top: 50,
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
                            564.00,
                          ),
                          width: getHorizontalSize(
                            328.00,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTest564x328,
                                height: getVerticalSize(
                                  564.00,
                                ),
                                width: getHorizontalSize(
                                  328.00,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: getPadding(
                                    right: 1,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSlideGray300,
                                        height: getVerticalSize(
                                          8.00,
                                        ),
                                        width: getHorizontalSize(
                                          327.00,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse20,
                                        height: getSize(
                                          42.00,
                                        ),
                                        width: getSize(
                                          42.00,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            21.00,
                                          ),
                                        ),
                                        margin: getMargin(
                                          left: 37,
                                          top: 52,
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 56,
                                        width: 56,
                                        margin: getMargin(
                                          top: 29,
                                          right: 2,
                                        ),
                                        variant: IconButtonVariant.FillBlue100,
                                        shape: IconButtonShape.CircleBorder28,
                                        padding: IconButtonPadding.PaddingAll16,
                                        alignment: Alignment.centerRight,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgFrame40,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 9,
                                          top: 35,
                                          right: 35,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(
                                                bottom: 19,
                                              ),
                                              color: ColorConstant.blue100,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder35,
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  70.00,
                                                ),
                                                width: getSize(
                                                  70.00,
                                                ),
                                                padding: getPadding(
                                                  all: 14,
                                                ),
                                                decoration: AppDecoration
                                                    .fillBlue100
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder35,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage59,
                                                      height: getSize(
                                                        42.00,
                                                      ),
                                                      width: getSize(
                                                        42.00,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse21,
                                              height: getSize(
                                                53.00,
                                              ),
                                              width: getSize(
                                                53.00,
                                              ),
                                              radius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  26.00,
                                                ),
                                              ),
                                              margin: getMargin(
                                                top: 36,
                                              ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          275.00,
                        ),
                        child: Text(
                          "msg_payment_are_easier".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
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
                          top: 22,
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
                      CustomButton(
                        height: 56,
                        width: 327,
                        text: "lbl_continue".tr,
                        margin: getMargin(
                          top: 46,
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
    );
  }
}

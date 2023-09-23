import 'package:fintap/core/utils/shared_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/onboarding_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  PageController pgController = PageController();
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
            children: [
              PageView(
                onPageChanged: (value) => controller.activePage.value = value,
                controller: pgController,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.onBoarding1,
                        margin: getMargin(top: 30),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height * .4,
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
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "The Fintap for You",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtGeneralSansSemibold24
                                      .copyWith(
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
                                  "We support your everyday financial needs from Bill payments to investments and down to withdrawals, we're fast and free.",
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.onBoarding2,
                        margin: getMargin(top: 30),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height * .4,
                          padding: getPadding(
                            left: 24,
                            top: 40,
                            right: 24,
                          ),
                          decoration: AppDecoration.fillIndigoA400,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "Guaranteed Investments",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtGeneralSansSemibold24
                                      .copyWith(
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
                                  "Make passive income by investing some money on FinTap and expect 5-15% ROI within specified periods.",
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.onBoarding3,
                        margin: getMargin(top: 30),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height * .4,
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
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "Instant Value",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtGeneralSansSemibold24
                                      .copyWith(
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
                                  "Get instant value for all transactions done on FinTap, be it bills, investments, withdrawals etc, all stored and accessible anytime.",
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Obx(
                () => controller.activePage.value == 2
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: getMargin(bottom: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                height: 56,
                                width: 155,
                                text: "lbl_sign_in".tr,
                                onTap: () async {
                                  await setFirstSeen(true);
                                  Get.toNamed(AppRoutes.signInWithEmailScreen);
                                },
                                variant: ButtonVariant.OutlineWhiteA700,
                                fontStyle: ButtonFontStyle
                                    .GeneralSansMedium16WhiteA700,
                              ),
                              CustomButton(
                                height: 56,
                                width: 155,
                                text: "lbl_get_started".tr,
                                onTap: () async {
                                  await setFirstSeen(true);
                                  Get.toNamed(AppRoutes.createAccountScreen);
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    : CustomButton(
                        height: 56,
                        width: size.width,
                        text: "lbl_continue".tr,
                        margin: getMargin(bottom: 20, left: 20, right: 20),
                        onTap: () => pgController.nextPage(
                            duration: 300.milliseconds, curve: Curves.ease),
                        alignment: Alignment.bottomCenter,
                      ),
              ),
              Obx(
                () => Align(
                  alignment: Alignment(0, -.88),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.activePage.value,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: SlideEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 100,
                        dotHeight: 8.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: ColorConstant.gray300,
                        activeDotColor: ColorConstant.indigoA400),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

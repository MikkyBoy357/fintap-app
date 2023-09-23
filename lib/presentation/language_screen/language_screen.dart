import 'package:fintap/widgets/bk_btn.dart';

import 'controller/language_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                backgroundColor: ColorConstant.whiteA700,
                height: getVerticalSize(60.00),
                leadingWidth: 48,
                leading: BkBtn(
                  margin: getMargin(left: 24, top: 12, bottom: 24),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_language".tr),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                margin: getMargin(left: 24, top: 24, right: 24),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => controller.changeLang('en'),
                      child: Container(
                        padding: getPadding(
                          all: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEngland,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  4.00,
                                ),
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 3,
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_english".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle
                                    .txtGeneralSansMedium14Bluegray900
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.06,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            controller.locale == Locale('en')
                                ? CustomImageView(
                                    svgPath:
                                        ImageConstant.imgClockIndigoA40024x24,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                  )
                                : Container(
                                    height: getSize(
                                      18.00,
                                    ),
                                    width: getSize(
                                      18.00,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: ColorConstant.gray300)),
                                  ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.changeLang('ar'),
                      child: Container(
                        padding: getPadding(
                          all: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.egypt,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  4.00,
                                ),
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 3,
                                bottom: 1,
                              ),
                              child: Text(
                                'العربية',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle
                                    .txtGeneralSansMedium14Bluegray900
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.06,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            controller.locale == Locale('ar')
                                ? CustomImageView(
                                    svgPath:
                                        ImageConstant.imgClockIndigoA40024x24,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                  )
                                : Container(
                                    height: getSize(
                                      18.00,
                                    ),
                                    width: getSize(
                                      18.00,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: ColorConstant.gray300)),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))));
  }

  onTapArrowleft40() {
    Get.back();
  }
}

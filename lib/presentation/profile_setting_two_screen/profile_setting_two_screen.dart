import 'package:fintap/widgets/spacing.dart';
import 'package:intl/intl.dart';

import 'controller/profile_setting_two_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ProfileSettingTwoScreen extends StatelessWidget {
  ProfileSettingTwoScreen(this.controller);
  ProfileSettingTwoController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height * .98,
        padding: getPadding(
          left: 24,
          top: 23,
          right: 24,
        ),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                HorizontalSpace(width: 24),
                Text("lbl_date_of_birth".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold18.copyWith(
                        letterSpacing: getHorizontalSize(0.50),
                        height: getVerticalSize(0.99))),
                CustomImageView(
                  svgPath: ImageConstant.imgCloseGray900,
                  height: getSize(24.00),
                  width: getSize(24.00),
                  onTap: () => Get.back(),
                )
              ]),
              InkWell(
                onTap: () => controller.selectDate(context),
                child: Container(
                    margin: getMargin(top: 31),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: Obx(
                          () => CustomButton(
                              height: 52,
                              width: 72,
                              text:
                                  controller.selectedDate.value.day.toString(),
                              variant: ButtonVariant.FillWhiteA700,
                              shape: ButtonShape.Square,
                              fontStyle: ButtonFontStyle.GeneralSansRegular14),
                        ),
                      ),
                      CustomDivider(
                        width: 1,
                        height: 52,
                      ),
                      Expanded(
                        flex: 2,
                        child: Obx(
                          () => CustomButton(
                              height: 52,
                              width: 160,
                              text: DateFormat('MMMM')
                                  .format(controller.selectedDate.value),
                              margin: getMargin(left: 4),
                              variant: ButtonVariant.FillWhiteA700,
                              shape: ButtonShape.Square,
                              fontStyle: ButtonFontStyle.GeneralSansRegular14),
                        ),
                      ),
                      CustomDivider(
                        width: 1,
                        height: 52,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                            padding: getPadding(top: 16, left: 20, bottom: 16),
                            child: Obx(
                              () => Text(
                                  controller.selectedDate.value.year.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtGeneralSansRegular14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.50),
                                          height: getVerticalSize(1.27))),
                            )),
                      )
                    ])),
              ),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_save".tr,
                margin: getMargin(
                  bottom: 20,
                ),
                onTap: () => Get.back(),
              )
            ]));
  }
}

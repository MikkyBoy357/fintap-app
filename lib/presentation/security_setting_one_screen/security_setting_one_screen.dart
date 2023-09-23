import 'package:country_pickers/country.dart';
import 'package:fintap/widgets/spacing.dart';

import '../../widgets/custom_phone_number.dart';
import 'controller/security_setting_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class SecuritySettingOneScreen extends StatelessWidget {
  SecuritySettingOneScreen(this.controller);
  SecuritySettingOneController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height * .98,
        margin: getMargin(top: 4),
        padding: getPadding(left: 24, top: 23, right: 24, bottom: 23),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                HorizontalSpace(width: 24),
                Text("lbl_mobile_number".tr,
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
              Padding(
                  padding: getPadding(
                    top: 30,
                  ),
                  child: Obx(() => CustomPhoneNumber(
                      country: controller.selectedCountry.value,
                      controller: controller.phoneNumberController,
                      onTap: (Country country) {
                        controller.selectedCountry.value = country;
                      }))),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_save".tr,
                onTap: () => Get.back(),
              )
            ]));
  }

  onTapArrowleft34() {
    Get.back();
  }
}

import 'package:fintap/widgets/spacing.dart';

import 'controller/security_setting_four_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_drop_down.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class SecuritySettingFourScreen
    extends GetWidget<SecuritySettingFourController> {
  SecuritySettingFourScreen(this.controller);
  SecuritySettingFourController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        margin: getMargin(top: 4),
        padding: getPadding(all: 24),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                HorizontalSpace(width: 24),
                Padding(
                    padding: getPadding(top: 1),
                    child: Text("msg_security_question".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyle.txtGeneralSansSemibold18.copyWith(
                            letterSpacing: getHorizontalSize(0.50),
                            height: getVerticalSize(0.99)))),
                CustomImageView(
                    svgPath: ImageConstant.imgCloseGray900,
                    height: getSize(24.00),
                    width: getSize(24.00),
                    onTap: () => Get.back(),
                    margin: getMargin(bottom: 2))
              ]),
              CustomDropDown(
                  width: size.width,
                  value: controller
                      .securitySettingFourModelObj.value.dropdownItemList[0],
                  focusNode: FocusNode(),
                  icon: Container(
                      margin: getMargin(left: 30, right: 16),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlueGray500)),
                  hintText: "msg_what_is_your_first".tr,
                  margin: getMargin(top: 29),
                  padding: DropDownPadding.PaddingT16,
                  fontStyle: DropDownFontStyle.GeneralSansRegular14,
                  items: controller
                      .securitySettingFourModelObj.value.dropdownItemList,
                  onChanged: (value) {
                    controller.onSelected(value);
                  }),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.inputOneController,
                  hintText: "lbl_cat".tr,
                  margin: getMargin(top: 16),
                  padding: TextFormFieldPadding.PaddingAll16,
                  textInputAction: TextInputAction.done),
              Spacer(),
              CustomButton(
                  height: 56,
                  width: size.width,
                  text: "lbl_save".tr,
                  onTap: () => Get.back(),
                  margin: getMargin(bottom: 16))
            ]));
  }
}

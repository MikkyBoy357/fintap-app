import 'package:fintap/widgets/spacing.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/profile_setting_four_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ProfileSettingFourScreen extends StatelessWidget {
  ProfileSettingFourScreen(this.controller);
  ProfileSettingFourController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .98,
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
                Text("lbl_real_name".tr,
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
                    margin: getMargin(bottom: 1))
              ]),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.inputController,
                  hintText: "msg_nuha_maulana_ahsan".tr,
                  margin: getMargin(top: 30),
                  padding: TextFormFieldPadding.PaddingAll16,
                  textInputAction: TextInputAction.done),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_save".tr,
              )
            ]));
  }

  onTapArrowleft29() {
    Get.back();
  }
}

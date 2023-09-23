import 'package:fintap/widgets/custom_checkbox.dart';

import 'controller/new_card_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class NewCardScreen extends GetWidget<NewCardController> {
  NewCardScreen(this.controller);
  NewCardController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .95,
        width: size.width,
        margin: getMargin(top: 4),
        padding: getPadding(all: 24),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text("lbl_new_card".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGeneralSansSemibold18.copyWith(
                            letterSpacing: getHorizontalSize(0.50),
                            height: getVerticalSize(0.99))),
                    CustomImageView(
                        svgPath: ImageConstant.imgCloseGray900,
                        onTap: () => Get.back(),
                        height: getSize(24.00),
                        width: getSize(24.00),
                        margin: getMargin(left: 94, bottom: 1))
                  ])),
              CustomTextFormField(
                  width: size.width,
                  margin: getMargin(top: 23),
                  focusNode: FocusNode(),
                  controller: controller.textInputController1,
                  hintText: '5869 2241 2205 5551',
                  padding: TextFormFieldPadding.PaddingT16_1,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin:
                          getMargin(left: 16, top: 14, right: 8, bottom: 14),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCalendarBlueGray500,
                      )),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(52.00))),
              Padding(
                  padding: getPadding(top: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapRowcalendarone();
                            },
                            child: Container(
                                padding: getPadding(
                                    left: 16, top: 14, right: 16, bottom: 14),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCalendarBlueGray500,
                                      height: getSize(24.00),
                                      width: getSize(24.00)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8,
                                          top: 3,
                                          right: 14,
                                          bottom: 1),
                                      child: Obx(() => Text(
                                          controller.newCardModelObj.value
                                              .enterOneTxt.value,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansRegular14
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.50),
                                                  height:
                                                      getVerticalSize(1.27)))))
                                ]))),
                        CustomTextFormField(
                            width: 155,
                            focusNode: FocusNode(),
                            controller: controller.textInputController2,
                            hintText: "lbl_cvv".tr,
                            padding: TextFormFieldPadding.PaddingT16_1,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin: getMargin(
                                    left: 16, top: 14, right: 8, bottom: 14),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFile)),
                            prefixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(52.00)))
                      ])),
              Obx(
                () => CustomCheckbox(
                  text: "lbl_save_card".tr,
                  iconSize: 20,
                  padding: getPadding(all: 0),

                  value: controller.checkboxVal.value,
                  // ignore: non_constant_identifier_names
                  onChange: (Value) => controller.checkboxVal.value = Value,
                ),
              ),
              Spacer(),
              CustomButton(
                height: 56,
                width: size.width,
                text: "lbl_top_up".tr,
                margin: getMargin(top: 20, bottom: 16),
                onTap: () => Get.toNamed(AppRoutes.topUpSuccessScreen),
              )
            ]));
  }

  Future<void> onTapRowcalendarone() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.newCardModelObj.value.selectedEnterOneTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.newCardModelObj.value.selectedEnterOneTxt = dateTime;
      controller.newCardModelObj.value.enterOneTxt.value =
          dateTime.format(DD_MM_YYYY);
    }
  }

  onTapArrowleft8() {
    Get.back();
  }
}

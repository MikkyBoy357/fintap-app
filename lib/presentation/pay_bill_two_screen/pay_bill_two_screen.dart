import 'package:fintap/widgets/bk_btn.dart';

import '../pay_bill_screen/models/content13_item_model.dart';

import 'controller/pay_bill_two_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_drop_down.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PayBillTwoScreen extends GetWidget<PayBillTwoController> {
  @override
  Widget build(BuildContext context) {
    final Content13ItemModel service = Get.arguments;
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
              backgroundColor: ColorConstant.whiteA700,
              height: getVerticalSize(60.00),
              leadingWidth: 48,
              leading: BkBtn(
                margin: getMargin(left: 24, top: 12, bottom: 24),
              ),
              centerTitle: true,
              title: AppbarSubtitle(text: service.title),
            ),
            body: Container(
                width: size.width,
                padding: getPadding(all: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomDropDown(
                          width: size.width,
                          focusNode: FocusNode(),
                          value: controller
                              .payBillTwoModelObj.value.dropdownItemList[0],
                          icon: Container(
                              margin: getMargin(left: 30, right: 16),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowdownBlueGray500)),
                          hintText: "lbl_select_provider".tr,
                          padding: DropDownPadding.PaddingT16,
                          fontStyle: DropDownFontStyle.GeneralSansRegular14,
                          items: controller
                              .payBillTwoModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      CustomTextFormField(
                          width: size.width,
                          focusNode: FocusNode(),
                          controller: controller.componentFiveController,
                          hintText: "lbl_enter_user_id".tr,
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT15,
                          textInputAction: TextInputAction.done),
                      CustomDropDown(
                          width: size.width,
                          value: controller
                              .payBillTwoModelObj.value.dropdownItemList1[0],
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 16),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowdownBlueGray500)),
                          hintText: "lbl_select_period".tr,
                          margin: getMargin(top: 16, bottom: 5),
                          padding: DropDownPadding.PaddingT16,
                          fontStyle: DropDownFontStyle.GeneralSansRegular14,
                          items: controller
                              .payBillTwoModelObj.value.dropdownItemList1,
                          onChanged: (value) {
                            controller.onSelected1(value);
                          })
                    ])),
            bottomNavigationBar: CustomButton(
              margin: getPadding(left: 24, right: 24, bottom: 20),
              height: 56,
              width: size.width,
              text: "lbl_pay_bill".tr,
              onTap: () => Get.toNamed(AppRoutes.payBillOneScreen),
            )));
  }

  onTapArrowleft18() {
    Get.back();
  }
}

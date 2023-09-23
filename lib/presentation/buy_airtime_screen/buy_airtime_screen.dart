import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';

import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import 'controller/buy_airtime_controller.dart';

import 'widgets/custom_airtime_dropdown.dart';

class BuyAirtimeScreen extends GetWidget<BuyAirtimeController> {
 final  BuyAirtimeController buyAirtimeController = Get.put(
    BuyAirtimeController(),
  );
  @override
  Widget build(BuildContext context) {
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
              title: AppbarSubtitle(text: 'Airtime'),
            ),
            body: Obx(() => buyAirtimeController.isLoading.value
                ? Container(
                    alignment: Alignment.center,
                    margin: getPadding(
                      left: 24,
                      right: 24,
                      bottom: 20,
                    ),
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: ColorConstant.lightGreen400,
                      radius: 20,
                    ),
                  )
                : Container(
                    width: size.width,
                    padding: getPadding(all: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomAirtimeDropDown(
                              width: size.width,
                              focusNode: FocusNode(),
                              // value: buyAirtimeController
                              //     .selectedAirtimeData.value,
                              icon: Container(
                                  margin: getMargin(left: 30, right: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlueGray500)),
                              hintText: "Select Provider",
                              // padding: DropDownPadding.PaddingT16,
                              // fontStyle: DropDownFontStyle.GeneralSansRegular14,
                              items: buyAirtimeController
                                  .airtimeServicesModel.value.data,
                              onChanged: (value) {
                                buyAirtimeController.selectBiller(value);
                              }),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.amountController,
                              hintText: "Amount".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT15,
                              textInputType: TextInputType.number,
                              textInputAction: TextInputAction.done),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.phoneNumberController,
                              hintText: "Phone Number".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT15,
                              textInputType: TextInputType.number,
                              textInputAction: TextInputAction.done),
                        ]))),
            bottomNavigationBar: Obx(() => buyAirtimeController.isLoading.value
                ? SizedBox()
                : buyAirtimeController.isBillProcessing.value
                    ? Container(
                        margin: getPadding(
                          left: 24,
                          right: 24,
                          bottom: 20,
                        ),
                        child: CupertinoActivityIndicator(
                          animating: true,
                          color: ColorConstant.lightGreen400,
                          radius: 20,
                        ),
                      )
                    : CustomButton(
                        margin: getPadding(left: 24, right: 24, bottom: 20),
                        height: 56,
                        width: size.width,
                        text: "lbl_pay_bill".tr,
                        onTap: () => controller.buyAirtimeService(),
                      ))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}

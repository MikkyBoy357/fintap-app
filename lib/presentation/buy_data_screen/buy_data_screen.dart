import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';



import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';

import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/buy_data_controller.dart';
import 'widgets/custom_data_dropdown.dart';
import 'widgets/custom_package_dropdown.dart';

class BuyDataScreen extends GetWidget<BuyDataController> {
  final BuyDataController buyDataController = Get.put(
    BuyDataController(),
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
              title: AppbarSubtitle(text: 'Mobile Data'),
            ),
            body: Obx(() => buyDataController.isLoading.value
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
                          CustomDataDropDown(
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
                              items: buyDataController
                                  .dataServicesModel.value.data,
                              onChanged: (value) {
                                buyDataController.selectBiller(value);
                              }),
                          SizedBox(
                            height: 16,
                          ),
                          Obx(
                            () => buyDataController.isLoadingPackage.value
                                ? Container(
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: CupertinoActivityIndicator(
                                      animating: true,
                                      color: ColorConstant.lightGreen400,
                                      radius: 20,
                                    ))
                                : buyDataController.showPackage.value
                                    ? CustomDataPackageDropDown(
                                        width: size.width,
                                        focusNode: FocusNode(),
                                        // value: buyAirtimeController
                                        //     .selectedAirtimeData.value,
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 16),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlueGray500)),
                                        hintText: "Select Package",
                                        // padding: DropDownPadding.PaddingT16,
                                        // fontStyle: DropDownFontStyle.GeneralSansRegular14,
                                        items: buyDataController
                                            .dataPackageServicesModel
                                            .value
                                            .data!
                                            .first
                                            .variations,
                                        onChanged: (value) {
                                          buyDataController
                                              .selectPackage(value);
                                        })
                                    : SizedBox(),
                          ),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.phoneNumberController,
                              hintText: "Phone Number",
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT15,
                              textInputType: TextInputType.number,
                              textInputAction: TextInputAction.done),
                          CustomTextFormField(
                              isEnabled: false,
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.amountController,
                              hintText: controller.amount.value.isEmpty
                                  ? "Amount"
                                  : "N ${controller.amount.value}",
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT15,
                              textInputType: TextInputType.number,
                              textInputAction: TextInputAction.done),
                        ]))),
            bottomNavigationBar: Obx(() => buyDataController.isLoading.value
                ? SizedBox()
                : CustomButton(
                    margin: getPadding(left: 24, right: 24, bottom: 20),
                    height: 56,
                    width: size.width,
                    text: "lbl_pay_bill".tr,
                    // onTap: () => Get.toNamed(AppRoutes.payBillOneScreen),
                    onTap: () => buyDataController.buyDataService(),
                  ))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}

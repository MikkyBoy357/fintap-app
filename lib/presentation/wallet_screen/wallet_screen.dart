import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/cupertino.dart';

import 'controller/wallet_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';

import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_available_dropdown.dart';
import 'widgets/custom_investment_package.dart';

// ignore_for_file: must_be_immutable
class WalletScreen extends GetWidget<WalletController> {
  final WalletController walletController = Get.put(
    WalletController(),
  );
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.gray100,
          appBar: CustomAppBar(
            height: getVerticalSize(60.00),
            leadingWidth: 48,
            leading: BkBtn(
              margin: getMargin(left: 24, top: 12, bottom: 24),
            ),
            centerTitle: true,
            title: AppbarSubtitle(text: "Create Investment".tr),
            backgroundColor: ColorConstant.whiteA700,
          ),
          body: Form(
              key: _formKey,
              child: Container(
                  width: size.width,
                  padding: getPadding(all: 24),
                  child: Obx(() => walletController.isLoading.value
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
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              CustomAvailableInvestmentDropDown(
                                  width: size.width,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlueGray500)),
                                  hintText: "Select Provider",
                                  items: controller
                                      .investmentServicesModel.value.data,
                                  onChanged: (value) {
                                    controller.selectInvestment(value);
                                  }),
                              SizedBox(
                                height: 16,
                              ),
                              Obx(
                                () => controller.isLoadingPackage.value
                                    ? Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: CupertinoActivityIndicator(
                                          animating: true,
                                          color: ColorConstant.lightGreen400,
                                          radius: 20,
                                        ))
                                    : controller.showPackage.value
                                        ? CustomInvestmentPackageDropDown(
                                            width: size.width,
                                            focusNode: FocusNode(),
                                            // value: buyAirtimeController
                                            //     .selectedAirtimeData.value,
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 30, right: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownBlueGray500)),
                                            hintText: "Select Investment",
                                            // padding: DropDownPadding.PaddingT16,
                                            // fontStyle: DropDownFontStyle.GeneralSansRegular14,
                                            items: walletController
                                                .investmentPackageServicesModel
                                                .value
                                                .data
                                                ?.first
                                                .variations,
                                            onChanged: (value) {
                                              controller
                                                  .selectInvestmentPackage(
                                                      value);
                                            })
                                        : SizedBox(),
                              ),
                              Container(
                                  margin: getMargin(top: 16, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: getHorizontalSize(60),
                                          height: getVerticalSize(52),
                                          child: Text(
                                            'N',
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray200
                                                .copyWith(
                                                    color: ColorConstant
                                                        .blueGray500),
                                          ),
                                        ),
                                        CustomDivider(
                                          width: 1,
                                          height: 52,
                                        ),
                                        Expanded(
                                          child: CustomTextFormField(
                                              width: 244,
                                              focusNode: FocusNode(),
                                              padding: TextFormFieldPadding
                                                  .paddingAll2,
                                              textInputType:
                                                  TextInputType.number,
                                              controller:
                                                  controller.amountController,
                                              hintText:
                                                  "Enter amount to invest".tr,
                                              onChanged: (value) {
                                                controller
                                                    .calculateExpectedReturns();
                                              },
                                              margin: getMargin(
                                                  left: 14,
                                                  top: 16,
                                                  right: 12,
                                                  bottom: 16),
                                              variant:
                                                  TextFormFieldVariant.None,
                                              textInputAction:
                                                  TextInputAction.done),
                                        )
                                      ])),
                              Obx(
                                () => controller.showReturnsField.value
                                    ? CustomTextFormField(
                                        width: size.width,
                                        isEnabled: false,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.returnsController,
                                        hintText:
                                            "Expected Return ${controller.returns.value}",
                                        padding:
                                            TextFormFieldPadding.PaddingAll16,
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        })
                                    : SizedBox(),
                              ),
                            ])))),
          bottomNavigationBar: Obx(() => controller.isBillProcessing.value
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
                  height: 56,
                  width: size.width,
                  onTap: () => controller.createInvestmentService(),
                  margin: getPadding(left: 24, right: 24, bottom: 20),
                  text: "Create Investment".tr)),
        ));
  }

  onTapArrowleft22() {
    Get.back();
  }
}

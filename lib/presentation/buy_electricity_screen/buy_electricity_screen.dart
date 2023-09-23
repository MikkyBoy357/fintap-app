import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/buy_electricity_controller.dart';
import 'widgets/custom_electricity_dropdown.dart';
import 'widgets/custom_electricity_package_dropdown.dart';

class BuyElectricityScreen extends GetWidget<BuyElectricityController> {
  final BuyElectricityController buyElectricityController = Get.put(
    BuyElectricityController(),
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
              title: AppbarSubtitle(text: 'Electricity'),
            ),
            body: Obx(() => buyElectricityController.isLoading.value
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
                          CustomElectricityDropDown(
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
                              items: buyElectricityController
                                  .electricityServicesModel.value.data,
                              onChanged: (value) {
                                buyElectricityController.selectBiller(value);
                              }),
                          SizedBox(
                            height: 16,
                          ),
                          Obx(
                            () => buyElectricityController
                                    .isLoadingPackage.value
                                ? Container(
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: CupertinoActivityIndicator(
                                      animating: true,
                                      color: ColorConstant.lightGreen400,
                                      radius: 20,
                                    ))
                                : buyElectricityController.showPackage.value
                                    ? CustomElectricityPackageDropDown(
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
                                        items: buyElectricityController
                                            .electricityPackageServicesModel
                                            .value
                                            .data!
                                            .first
                                            .variations,
                                        onChanged: (value) {
                                          buyElectricityController
                                              .selectPackage(value);
                                        })
                                    : SizedBox(),
                          ),
                          Obx(
                            () => buyElectricityController.showMeterField.value
                                ? CustomTextFormField(
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.meterNumberController,
                                    hintText: "Meter Number",
                                    margin: getMargin(top: 16),
                                    padding: TextFormFieldPadding.PaddingT15,
                                    textInputType: TextInputType.number,
                                    textInputAction: TextInputAction.done)
                                : SizedBox(),
                          ),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.amountController,
                              hintText: "Amount",
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT15,
                              textInputType: TextInputType.number,
                              textInputAction: TextInputAction.done),
                          SizedBox(
                            height: 16,
                          ),
                          Obx(() => buyElectricityController
                                  .isMerchantProcessing.value
                              ? Container(
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          color: !buyElectricityController
                                                  .isMerchantProcessing.value
                                              ? null
                                              : Colors.white,
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: CupertinoActivityIndicator(
                                    animating: true,
                                    color: ColorConstant.lightGreen400,
                                    radius: 20,
                                  ))
                              : buyElectricityController
                                      .showMerchantSection.value
                                  ? buyElectricityController
                                          .merchantHasError.value
                                      ? SizedBox()
                                      : Container(
                                          width: double.infinity,
                                          padding: getPadding(
                                              left: 16,
                                              top: 14,
                                              right: 16,
                                              bottom: 14),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Column(
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("Customer Name",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Bluegray200
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.06)))),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text(
                                                      buyElectricityController
                                                              .verifyMerchantServicesModel
                                                              .value
                                                              .data!
                                                              .customerName ??
                                                          "",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Bluegray900
                                                          .copyWith(
                                                              fontSize: 16,
                                                              height:
                                                                  getVerticalSize(
                                                                      1.06)))),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text(
                                                      "Customer Address",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Bluegray200
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.06)))),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text(
                                                      buyElectricityController
                                                              .verifyMerchantServicesModel
                                                              .value
                                                              .data!
                                                              .address ??
                                                          "",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Bluegray900
                                                          .copyWith(
                                                              fontSize: 16,
                                                              height:
                                                                  getVerticalSize(
                                                                      1.06)))),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("Meter Number",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Bluegray200
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.06)))),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text(
                                                      buyElectricityController
                                                              .verifyMerchantServicesModel
                                                              .value
                                                              .data!
                                                              .meterNumber ??
                                                          "",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Bluegray900
                                                          .copyWith(
                                                              fontSize: 16,
                                                              height:
                                                                  getVerticalSize(
                                                                      1.06)))),
                                            ],
                                          ),
                                        )
                                  : SizedBox()),
                        ]))),
            bottomNavigationBar: Obx(() => buyElectricityController
                    .isLoading.value
                ? SizedBox()
                : buyElectricityController.isBillProcessing.value
                    ? Container(
                        padding: getPadding(
                            left: 16, top: 14, right: 16, bottom: 14),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12),
                        child: CupertinoActivityIndicator(
                          animating: true,
                          color: ColorConstant.lightGreen400,
                          radius: 20,
                        ))
                    : CustomButton(
                        margin: getPadding(left: 24, right: 24, bottom: 20),
                        height: 56,
                        width: size.width,
                        text: buyElectricityController.showMerchantSection.value
                            ? "Pay Bill"
                            : "Next",
                        // onTap: () => Get.toNamed(AppRoutes.payBillOneScreen),
                        onTap: () {
                          if (buyElectricityController
                              .showMerchantSection.value) {
                            // pay bill

                            buyElectricityController.buyElectricityService();
                          } else {
                            buyElectricityController.verifyMerchantService();
                          }
                        },
                      ))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}

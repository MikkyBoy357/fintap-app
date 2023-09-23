import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';



import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';

import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/buy_cable_tv_plan_controller.dart';
import 'widgets/custom_cable_tv_dropdown.dart';
import 'widgets/custom_cable_tv_package_dropdown.dart';

class BuyCableTVPlanScreen extends GetWidget<BuyCableTVPlanController> {
  final BuyCableTVPlanController buyCableTVController = Get.put(
    BuyCableTVPlanController(),
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
              title: AppbarSubtitle(text: 'Cable TV'),
            ),
            body: Obx(() => buyCableTVController.isLoading.value
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
                          CustomCableTVDropDown(
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
                              items: buyCableTVController
                                  .cableTVServicesModel.value.data,
                              onChanged: (value) {
                                buyCableTVController.selectBiller(value);
                              }),
                          SizedBox(
                            height: 16,
                          ),
                          Obx(
                            () => buyCableTVController.isLoadingPackage.value
                                ? Container(
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: CupertinoActivityIndicator(
                                      animating: true,
                                      color: ColorConstant.lightGreen400,
                                      radius: 20,
                                    ))
                                : buyCableTVController.showPackage.value
                                    ? CustomCableTVPackageDropDown(
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
                                        items: buyCableTVController
                                            .cableTvPackageServicesModel
                                            .value
                                            .data!
                                            .first
                                            .variations,
                                        onChanged: (value) {
                                          buyCableTVController
                                              .selectPackage(value);
                                        })
                                    : SizedBox(),
                          ),
                          Obx(
                            () => buyCableTVController.showSmartCardField.value
                                ? CustomTextFormField(
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.smartCardNumberController,
                                    hintText: "Smart Card Number",
                                    margin: getMargin(top: 16),
                                    padding: TextFormFieldPadding.PaddingT15,
                                    textInputType: TextInputType.number,
                                    textInputAction: TextInputAction.done)
                                : SizedBox(),
                          ),
                          Obx(() => buyCableTVController
                                  .showSmartCardField.value
                              ? CustomTextFormField(
                                  isEnabled: false,
                                  width: size.width,
                                  focusNode: FocusNode(),
                                  // controller: controller.amountController,
                                  hintText: "N ${controller.amount.value}",
                                  margin: getMargin(top: 16),
                                  padding: TextFormFieldPadding.PaddingT15,
                                  textInputType: TextInputType.number,
                                  textInputAction: TextInputAction.done)
                              : SizedBox()),
                          SizedBox(
                            height: 16,
                          ),
                          Obx(() => buyCableTVController
                                  .isMerchantProcessing.value
                              ? Container(
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          color: !buyCableTVController
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
                              : buyCableTVController.showMerchantSection.value
                                  ? Container(
                                      width: double.infinity,
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Column(
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "Customer Name",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            buyCableTVController
                                                                .cableTvBillerResponseServicesModel
                                                                .value
                                                                .data!
                                                                .customerName!,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray900
                                                                .copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text("Status",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            buyCableTVController
                                                                .cableTvBillerResponseServicesModel
                                                                .value
                                                                .data!
                                                                .status!,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray900
                                                                .copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Column(
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "Customer Number",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            buyCableTVController
                                                                .cableTvBillerResponseServicesModel
                                                                .value
                                                                .data!
                                                                .customerNumber
                                                                .toString(),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray900
                                                                .copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "Renewal Amount",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray200
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "NGN " +
                                                                NumberFormat
                                                                    .currency(
                                                                  symbol:
                                                                      '', // currency symbol
                                                                  decimalDigits:
                                                                      2, // number of decimal places
                                                                ).format(double.parse(buyCableTVController
                                                                    .cableTvBillerResponseServicesModel
                                                                    .value
                                                                    .data!
                                                                    .renewalAmount
                                                                    .toString())),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtGeneralSansMedium14Bluegray900
                                                                .copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    height: getVerticalSize(
                                                                        1.06)))),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text("Current Bouquet",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray200
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.06)))),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text(
                                                    buyCableTVController
                                                        .cableTvBillerResponseServicesModel
                                                        .value
                                                        .data!
                                                        .currentBouquet
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray900
                                                        .copyWith(
                                                            fontSize: 16,
                                                            height:
                                                                getVerticalSize(
                                                                    1.06)))),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text("Due Date",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray200
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.06)))),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text(
                                                    buyCableTVController
                                                        .cableTvBillerResponseServicesModel
                                                        .value
                                                        .data!
                                                        .dueDate
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14Bluegray900
                                                        .copyWith(
                                                            fontSize: 16,
                                                            height:
                                                                getVerticalSize(
                                                                    1.06)))),
                                          ],
                                        ),
                                      ),
                                    )
                                  : SizedBox()),
                        ]))),
            bottomNavigationBar: Obx(() => buyCableTVController.isLoading.value
                ? SizedBox()
                : buyCableTVController.isBillProcessing.value
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
                        text: buyCableTVController.showMerchantSection.value
                            ? "Pay Bill"
                            : "Next",
                        // onTap: () => Get.toNamed(AppRoutes.payBillOneScreen),
                        onTap: () {
                          if (buyCableTVController.showMerchantSection.value) {
                            // pay bill

                            buyCableTVController.buyCableTVService();
                          } else {
                            buyCableTVController.verifyMerchantService();
                          }
                        },
                      ))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}

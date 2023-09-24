import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/presentation/send_money_to_bank_screen/models/bank_accounts_model.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controller/send_money_to_bank_controller.dart';
import 'delete_bank_dialog_bottom_sheet.dart';
import 'widgets/custom_bank_dropdown.dart';

// ignore_for_file: must_be_immutable
class SendMoneyToBankScreen extends GetWidget<SendMoneyToBankController> {
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
              backgroundColor: ColorConstant.whiteA700,
              leadingWidth: 48,
              leading: BkBtn(
                margin: getMargin(left: 24, top: 12, bottom: 24),
              ),
              centerTitle: true,
              title: AppbarSubtitle(text: "Select Beneficiary"),
              actions: [
                AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgPlusIndigoA40024x24,
                    onTap: () {
                      controller.fetchBankListServices();
                      return Get.bottomSheet(addBankBottomsheet(),
                          isScrollControlled: true);
                    },
                    margin: getMargin(left: 24, top: 12, right: 24, bottom: 24))
              ],
            ),
            body: Form(
                key: _formKey,
                child: Container(
                  margin: getMargin(left: 24, top: 10, right: 24),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Obx(() => controller.isLoading.value
                      ? Container(
                          height: size.height * 0.5,
                          alignment: Alignment.center,
                          child: CupertinoActivityIndicator(
                            animating: true,
                            color: ColorConstant.lightGreen400,
                            radius: 20,
                          ))
                      : controller.bankAccountModel.value.data!.isEmpty
                          ? Container(
                              height: getVerticalSize(500),
                              alignment: Alignment.center,
                              margin: getPadding(
                                left: 24,
                                right: 24,
                                bottom: 20,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("No Beneficiary Found",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtGeneralSansRegular14
                                          .copyWith(
                                              height: getVerticalSize(1.16))),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomButton(
                                    height: 55,
                                    margin: getPadding(
                                      left: 24,
                                      right: 24,
                                      bottom: 20,
                                    ),
                                    width: size.width * .5,
                                    text: "New Transfer",
                                    onTap: () {
                                      controller.fetchBankListServices();
                                      Get.bottomSheet(addBankBottomsheet(),
                                          isScrollControlled: true);
                                    },
                                  ),
                                ],
                              ))
                          : ListView.separated(
                              shrinkWrap: true,
                              itemCount: controller
                                      .bankAccountModel.value.data!.isEmpty
                                  ? 0
                                  : controller
                                      .bankAccountModel.value.data!.length,
                              separatorBuilder: (context, index) =>
                                  CustomDivider(),
                              itemBuilder: (context, index) => Padding(
                                padding: getPadding(
                                    left: 16, top: 13, right: 16, bottom: 8),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () => Get.toNamed(
                                          AppRoutes.sendMoneyToBankOneScreen,
                                          arguments: controller.bankAccountModel
                                              .value.data![index]),
                                      child: Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomIconButton(
                                                    height: 40,
                                                    width: 40,
                                                    margin: getMargin(
                                                        top: 2, bottom: 2),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .bankSVGIcon)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 12, top: 2),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              controller
                                                                      .bankAccountModel
                                                                      .value
                                                                      .data![
                                                                          index]
                                                                      .accountName ??
                                                                  "",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtGeneralSansMedium14Bluegray900
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          1.06))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 4),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            controller.bankAccountModel.value.data![index].bankName ??
                                                                                "",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtGeneralSansMedium12Bluegray200.copyWith(height: getVerticalSize(0.99)))),
                                                                    Container(
                                                                        height: getSize(
                                                                            4.00),
                                                                        width: getSize(
                                                                            4.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                5,
                                                                            bottom:
                                                                                8),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray200,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(2.00)))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            controller.bankAccountModel.value.data![index].accountNumber ??
                                                                                "",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtGeneralSansRegular12Bluegray200.copyWith(height: getVerticalSize(0.99))))
                                                                  ]))
                                                        ])),
                                                Spacer(),
                                                Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  color: ColorConstant.gray300,
                                                  size: 20,
                                                )
                                              ])),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              controller
                                                  .fetchBankListServices();
                                              Get.bottomSheet(
                                                  updateBankBottomsheet(
                                                      id: controller
                                                          .bankAccountModel
                                                          .value
                                                          .data![index]
                                                          .id!));
                                            },
                                            icon: Icon(
                                              Icons.edit,
                                              color: Colors.green,
                                            )),
                                        IconButton(
                                            onPressed: () => Get.bottomSheet(
                                                    DeleteBankAccountBottomsheet(
                                                  beneficiaryId: controller
                                                      .bankAccountModel
                                                      .value
                                                      .data![index]
                                                      .id!,
                                                )),
                                            icon: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                ))));
  }

  Widget addBankBottomsheet() {
    return Container(
        width: size.width,
        height: size.height * .98,
        margin: getMargin(top: 8),
        padding: getPadding(
          left: 24,
          right: 24,
          top: 24,
        ),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getSize(16),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("Send Money",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold18.copyWith(
                        letterSpacing: getHorizontalSize(0.50),
                        height: getVerticalSize(0.99))),
                CustomImageView(
                    svgPath: ImageConstant.imgCloseGray900,
                    height: getSize(24.00),
                    width: getSize(24.00),
                    onTap: () {
                      controller.clearAddAccountControllers();
                      Get.back();
                    },
                    margin: getMargin(left: 56, bottom: 1))
              ]),
              SizedBox(
                height: getSize(16),
              ),
              Obx(() => controller.isLoading.value
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
                  : CustomBankDropDown(
                      width: size.width,
                      focusNode: FocusNode(),
                      // value: buyAirtimeController
                      //     .selectedAirtimeData.value,
                      icon: Container(
                          margin: getMargin(left: 30, right: 16),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownBlueGray500)),
                      hintText: "Select Bank",
                      // padding: DropDownPadding.PaddingT16,
                      // fontStyle: DropDownFontStyle.GeneralSansRegular14,
                      items: controller.banksModel.value.data,
                      onChanged: (value) {
                        controller.selectBank(value);
                      })),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.accountNumberController,
                  hintText: "lbl_account_number".tr,
                  margin: getMargin(top: 16),
                  padding: TextFormFieldPadding.PaddingAll16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "Please enter valid number";
                    }
                    return null;
                  }),
              SizedBox(
                height: 16,
              ),
              Obx(
                () => controller.isBankResolving.value
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
                    : controller.isAccountNumberValid.value
                        ? Container(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmarkWhiteA700,
                                      color: Colors.green,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(right: 8)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${controller.resolveBankAccountModel.value.data!.accountName}",
                                    style: AppStyle.txtGeneralSansMedium1081
                                        .copyWith(
                                      fontSize: 16,
                                      color: Colors.green,
                                    ),
                                  )
                                ]),
                          )
                        : SizedBox(),
              ),
              Spacer(),
              Obx(() => controller.isAccountNumberValid.value
                  ? CustomButton(
                      height: 56,
                      width: size.width,
                      text: "Proceed",
                      margin: getMargin(
                        bottom: 16,
                      ),
                      onTap: () async {
                        await controller.addAccountService();

                        final accountNumber =
                            controller.accountNumberController.text;
                        final BankAccountData accountData = controller
                            .bankAccountModel.value.data!
                            .where((element) =>
                                element.accountNumber == accountNumber)
                            .first;
                        print(accountNumber);
                        // Get.back();
                        Get.toNamed(AppRoutes.sendMoneyToBankOneScreen,
                            arguments: accountData);
                        controller.clearAddAccountControllers();
                      },
                    )
                  : CustomButton(
                      height: 56,
                      width: size.width,
                      text: "Confirm Bank Account",
                      margin: getMargin(
                        bottom: 16,
                      ),
                      onTap: () => controller.resolveAccountService(),
                    ))
            ]));
  }

  onTapArrowleft15() {
    Get.back();
  }

  Widget updateBankBottomsheet({required String id}) {
    return Container(
        width: size.width,
        height: size.height * .98,
        margin: getMargin(top: 8),
        padding: getPadding(
          left: 24,
          right: 24,
          top: 24,
        ),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getSize(16),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("Update Bank Account".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold18.copyWith(
                        letterSpacing: getHorizontalSize(0.50),
                        height: getVerticalSize(0.99))),
                CustomImageView(
                    svgPath: ImageConstant.imgCloseGray900,
                    height: getSize(24.00),
                    width: getSize(24.00),
                    onTap: () {
                      controller.clearAddAccountControllers();
                      Get.back();
                    },
                    margin: getMargin(left: 56, bottom: 1))
              ]),
              SizedBox(
                height: getSize(16),
              ),
              Obx(() => controller.isLoading.value
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
                  : CustomBankDropDown(
                      width: size.width,
                      focusNode: FocusNode(),
                      // value: buyAirtimeController
                      //     .selectedAirtimeData.value,
                      icon: Container(
                          margin: getMargin(left: 30, right: 16),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownBlueGray500)),
                      hintText: "Select Bank",
                      // padding: DropDownPadding.PaddingT16,
                      // fontStyle: DropDownFontStyle.GeneralSansRegular14,
                      items: controller.banksModel.value.data,
                      onChanged: (value) {
                        controller.selectBank(value);
                      })),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                  width: size.width,
                  focusNode: FocusNode(),
                  controller: controller.accountNumberController,
                  hintText: "lbl_account_number".tr,
                  margin: getMargin(top: 16),
                  padding: TextFormFieldPadding.PaddingAll16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "Please enter valid number";
                    }
                    return null;
                  }),
              SizedBox(
                height: 16,
              ),
              Obx(
                () => controller.isBankResolving.value
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
                    : controller.isAccountNumberValid.value
                        ? Container(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmarkWhiteA700,
                                      color: Colors.green,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(right: 8)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${controller.resolveBankAccountModel.value.data!.accountName}",
                                    style: AppStyle.txtGeneralSansMedium1081
                                        .copyWith(
                                      fontSize: 16,
                                      color: Colors.green,
                                    ),
                                  )
                                ]),
                          )
                        : SizedBox(),
              ),
              Spacer(),
              Obx(() => controller.isAccountNumberValid.value
                  ? CustomButton(
                      height: 56,
                      width: size.width,
                      text: "Update Bank Account",
                      margin: getMargin(
                        bottom: 16,
                      ),
                      onTap: () {
                        controller.updateAccountService(id);
                        controller.clearAddAccountControllers();
                        Get.back();
                      },
                    )
                  : CustomButton(
                      height: 56,
                      width: size.width,
                      text: "Confirm Bank Account",
                      margin: getMargin(
                        bottom: 16,
                      ),
                      onTap: () => controller.resolveAccountService(),
                    ))
            ]));
  }
}

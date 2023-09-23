import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text_form_field.dart';
import '../send_money_to_bank_screen/models/bank_accounts_model.dart';
import 'controller/send_money_to_bank_one_controller.dart';

class SendMoneyToBankOneScreen extends GetWidget<SendMoneyToBankOneController> {
  @override
  Widget build(BuildContext context) {
    BankAccountData data = Get.arguments;
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: BkBtn(
                  color: ColorConstant.whiteA700,
                  margin: getMargin(left: 24, top: 12, bottom: 13),
                ),
                centerTitle: true,
                title: AppbarTitle(text: "Send To Bank")),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 24, top: 18, right: 24),
                          padding: getPadding(all: 12),
                          decoration: AppDecoration.fillIndigoA100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            CustomIconButton(
                                height: 48,
                                width: 48,
                                child: CustomImageView(
                                    svgPath: ImageConstant.bankSVGIcon)),
                            Padding(
                                padding:
                                    getPadding(left: 12, top: 1, bottom: 2),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("${data.accountName}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium16Gray100
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.11))),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("${data.accountNumber}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14Blue50
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.27))))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("Enter Amount".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtGeneralSansRegular14WhiteA700
                                  .copyWith(height: getVerticalSize(1.27)))),
                      CustomTextFormField(
                        width: size.width / 3,
                        controller: controller.amountController,
                        prefix: Text(
                          'N',
                          style: TextStyle(
                              fontSize: 48,
                              color: ColorConstant.whiteA700.withOpacity(.5),
                              fontWeight: FontWeight.w500),
                        ),
                        variant: TextFormFieldVariant.None,
                        fontStyle: TextFormFieldFontStyle.GeneralSansRegular30,
                        hintText: '0.00',
                      ),
                      Padding(
                          padding: getPadding(top: 22),
                          // child: Text("msg_balance_14_000".tr,
                          child: Text("".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtGeneralSansMedium16Blue100
                                  .copyWith(height: getVerticalSize(1.11)))),
                      Spacer(),
                      CustomButton(
                        height: 56,
                        width: size.width,
                        text: "Send".tr,
                        margin:
                            getMargin(top: 23, bottom: 20, right: 24, left: 24),
                        onTap: () {
                          if (controller.amountController.text.isEmpty) {
                            Get.snackbar(
                              "Error".tr,
                              "Amount is required".tr,
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                              snackPosition: SnackPosition.TOP,
                            );
                            return;
                          }
                          controller.walletWithdrawal(data.id!);
                        },
                      )
                    ]))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}

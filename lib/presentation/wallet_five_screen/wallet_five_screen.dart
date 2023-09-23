import 'package:fintap/widgets/bk_btn.dart';

import '../../core/utils/money_formater.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/wallet_five_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WalletFiveScreen extends GetWidget<WalletFiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: BkBtn(
                  color: ColorConstant.whiteA700,
                  margin: getMargin(left: 24, top: 12, bottom: 12),
                ),
                centerTitle: true,
                title: AppbarTitle(text: "Withdraw")),
            body: Container(
                width: size.width,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 69),
                      child: Text("Set Amount",
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
                      padding: getPadding(top: 70),
                      child: Text(
                          "Available: ${moneyFormat().format(double.parse(Get.arguments))}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium16Blue100
                              .copyWith(height: getVerticalSize(1.11)))),
                  Spacer(),
                  CustomButton(
                    height: 56,
                    width: size.width,
                    text: "Continue",
                    margin: getMargin(top: 23, bottom: 20, left: 24, right: 24),
                    onTap: () => Get.toNamed(AppRoutes.walletFourScreen),
                  )
                ]))));
  }

  onTapArrowleft23() {
    Get.back();
  }
}

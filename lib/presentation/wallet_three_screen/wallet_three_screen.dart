import 'package:fintap/widgets/bk_btn.dart';

import '../../widgets/custom_text_form_field.dart';
import 'controller/wallet_three_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WalletThreeScreen extends GetWidget<WalletThreeController> {
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
                  margin: getMargin(left: 24, top: 12, bottom: 13),
                ),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_add_funds".tr)),
            body: Container(
                width: size.width,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 69),
                      child: Text("lbl_set_amount".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansRegular14WhiteA700
                              .copyWith(height: getVerticalSize(1.27)))),
                  CustomTextFormField(
                    width: size.width / 3,
                    prefix: Text(
                      '\$',
                      style: TextStyle(
                          fontSize: 48,
                          color: ColorConstant.whiteA700.withOpacity(.5),
                          fontWeight: FontWeight.w500),
                    ),
                    variant: TextFormFieldVariant.None,
                    fontStyle: TextFormFieldFontStyle.GeneralSansRegular30,
                    hintText: '12.5',
                  ),
                  Padding(
                      padding: getPadding(top: 70),
                      child: Text("msg_balance_14_000".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium16Blue100
                              .copyWith(height: getVerticalSize(1.11)))),
                  Spacer(),
                  CustomButton(
                      height: 56,
                      width: size.width,
                      text: "lbl_add_funds_now".tr,
                      margin:
                          getMargin(top: 23, left: 24, right: 24, bottom: 20))
                ]))));
  }

  onTapArrowleft25() {
    Get.back();
  }
}

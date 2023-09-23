import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'controller/scan_success_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ScanSuccessScreen extends GetWidget<ScanSuccessController> {
  ScanSuccessScreen(this.qrCodeResult);

  var controller = Get.put(ScanSuccessController());
  Barcode qrCodeResult;
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
                  margin: getMargin(left: 24, top: 12, bottom: 14),
                ),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_let_s_pay".tr)),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 24, top: 17, right: 24),
                          padding: getPadding(all: 12),
                          decoration: AppDecoration.fillIndigoA100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            CustomIconButton(
                                height: 48,
                                width: 48,
                                variant: IconButtonVariant.FillIndigoA400,
                                shape: IconButtonShape.CircleBorder24,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCar)),
                            Expanded(
                              child: Padding(
                                  padding: getPadding(
                                      left: 12, top: 2, right: 59, bottom: 2),
                                  child: Text(qrCodeResult.code.toString(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtGeneralSansMedium16Gray100
                                          .copyWith(
                                              height: getVerticalSize(1.11)))),
                            )
                          ])),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("lbl_enter_amount".tr,
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
                          padding: getPadding(top: 22),
                          child: Text("msg_balance_14_000".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtGeneralSansMedium16Blue100
                                  .copyWith(height: getVerticalSize(1.11)))),
                      Spacer(),
                      CustomButton(
                        height: 56,
                        width: size.width,
                        text: "lbl_pay_now".tr,
                        margin:
                            getMargin(top: 23, right: 24, left: 24, bottom: 20),
                        onTap: () =>
                            Get.toNamed(AppRoutes.paymentSuccessScreen),
                      )
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}

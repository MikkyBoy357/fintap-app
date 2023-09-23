
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'controller/send_money_to_bank_controller.dart';

// ignore_for_file: must_be_immutable
class DeleteBankAccountBottomsheet extends StatelessWidget {

  String beneficiaryId;
  DeleteBankAccountBottomsheet({required this.beneficiaryId});

   SendMoneyToBankController controller = Get.put(
    SendMoneyToBankController(),
  );
 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(all: 24),
            decoration: AppDecoration.fillGray100,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(222.00),
                            margin: getMargin(top: 1),
                            child: Text("Are you sure you want to delete Account ?".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtGeneralSansSemibold18
                                    .copyWith(
                                        letterSpacing: getHorizontalSize(0.50),
                                        height: getVerticalSize(0.99)))),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseGray900,
                            height: getSize(24.00),
                            width: getSize(24.00),
                            margin: getMargin(left: 30, bottom: 27),
                            onTap: () {
                              onTapImgClose();
                            })
                      ]),
                  CustomButton(
                      height: 56,
                      width: size.width,
                      text: "Yes, I want to delete",
                      onTap: () {
                        Get.back();
                        controller.deleteBeneficairyService(beneficiaryId);
                      }
                          ,
                      margin: getMargin(top: 28),
                      variant: ButtonVariant.OutlineDeeporange800,
                      fontStyle:
                          ButtonFontStyle.GeneralSansMedium16Deeporange800),
                  CustomButton(
                      height: 56,
                      width: size.width,
                      text: "Cancel",
                      onTap: () => Get.back(),
                      margin: getMargin(top: 16, bottom: 32))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}

import '../../core/utils/shared_data.dart';
import 'controller/logout_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  LogoutBottomsheet(this.controller);

  LogoutController controller;

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
                            child: Text("msg_are_you_sure_you".tr,
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
                      text: "msg_yes_i_want_to_log".tr,
                      onTap: () async {
                        await clearUserData();

                        Get.snackbar(
                          "Success",
                          "Logout Successful",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                        );
                        return Get.offAllNamed(AppRoutes.signInWithEmailScreen);
                      },
                      margin: getMargin(top: 28),
                      variant: ButtonVariant.OutlineDeeporange800,
                      fontStyle:
                          ButtonFontStyle.GeneralSansMedium16Deeporange800),
                  CustomButton(
                      height: 56,
                      width: size.width,
                      text: "msg_no_stay_logged".tr,
                      onTap: () => Get.back(),
                      margin: getMargin(top: 16, bottom: 32))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}

import 'package:fintap/presentation/complete_profile_one_screen/complete_profile_one_screen.dart';
import 'package:fintap/presentation/complete_profile_two_screen/complete_profile_two_screen.dart';
import 'package:fintap/widgets/bk_btn.dart';
import 'package:im_stepper/stepper.dart';

import 'controller/complete_profile_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends GetWidget<CompleteProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                backgroundColor: ColorConstant.whiteA700,
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: BkBtn(
                  margin: getMargin(left: 24, bottom: 2),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_complete_profile".tr)),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Container(
                            width: size.width,
                            padding: getPadding(top: 12, bottom: 12),
                            decoration: AppDecoration.fillWhiteA700,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(top: 21, bottom: 4),
                                    child: NumberStepper(
                                      numbers: [
                                        1,
                                        2,
                                        3,
                                      ],
                                      activeStep: controller.activeStep.value,
                                      activeStepColor: ColorConstant.indigoA400,
                                      enableNextPreviousButtons: false,
                                      stepColor: ColorConstant.gray300,
                                      lineLength: size.width * .28,
                                      lineColor: ColorConstant.gray300,
                                      numberStyle: AppStyle
                                          .txtGeneralSansSemibold14
                                          .copyWith(
                                              color: ColorConstant.whiteA700),

                                      activeStepBorderColor: Colors.transparent,

                                      // This ensures step-tapping updates the activeStep.
                                      onStepReached: (index) {
                                        controller.activeStep.value = index;
                                      },
                                    ),
                                  ),
                                ])),
                      ),
                      Obx(() => pageGenerating()),
                    ])),
            bottomNavigationBar: Obx(
              () => CustomButton(
                  height: 56,
                  width: size.width,
                  margin: getPadding(left: 24, right: 24, bottom: 20),
                  text: controller.activeStep.value < 2
                      ? "lbl_continue".tr
                      : "lbl_done".tr,
                  variant: ButtonVariant.FillLightgreen400,
                  onTap: () {
                    if (controller.activeStep.value < 2)
                      controller.activeStep.value++;
                    else
                      Get.back();
                  },
                  fontStyle: ButtonFontStyle.GeneralSansMedium16),
            )));
  }

  Widget pageGenerating() {
    switch (controller.activeStep.value) {
      case 0:
        return Container(
            width: getHorizontalSize(327.00),
            margin: getMargin(left: 24, top: 24, right: 24, bottom: 5),
            padding: getPadding(all: 16),
            decoration: AppDecoration.fillWhiteA700
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                      height: 48,
                      width: 48,
                      variant: IconButtonVariant.FillOrange50,
                      shape: IconButtonShape.CircleBorder24,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMailLime800)),
                  Padding(
                      padding: getPadding(top: 10),
                      child: Text("msg_confirm_your_email".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium16Bluegray900
                              .copyWith(height: getVerticalSize(1.11)))),
                  Container(
                      width: getHorizontalSize(289.00),
                      margin: getMargin(top: 9),
                      child: Text("msg_we_have_sent_a_confirmation".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtGeneralSansRegular14
                              .copyWith(height: getVerticalSize(1.16)))),
                  Padding(
                      padding: getPadding(top: 19),
                      child: Text("lbl_change_email".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansSemibold14
                              .copyWith(height: getVerticalSize(1.27)))),
                  CustomButton(
                      height: 44,
                      width: 295,
                      text: "msg_resend_confirmation".tr,
                      margin: getMargin(top: 17),
                      variant: ButtonVariant.OutlineIndigoA400,
                      shape: ButtonShape.RoundedBorder9,
                      padding: ButtonPadding.PaddingAll11,
                      fontStyle: ButtonFontStyle.GeneralSansMedium14IndigoA400)
                ]));

      case 1:
        return CompleteProfileTwoScreen();

      case 2:
        return CompleteProfileOneScreen();

      default:
        return SizedBox();
    }
  }
}

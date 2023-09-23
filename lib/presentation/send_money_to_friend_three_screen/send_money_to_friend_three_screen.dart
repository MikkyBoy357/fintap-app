import 'controller/send_money_to_friend_three_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SendMoneyToFriendThreeScreen
    extends GetWidget<SendMoneyToFriendThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 24, top: 12, bottom: 14),
                    onTap: onTapArrowleft19),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_request_money".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgQr,
                          height: getSize(327.00),
                          width: getSize(327.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(16.00))),
                      CustomButton(
                          height: 56,
                          width: 327,
                          text: "lbl_set_amount".tr,
                          margin: getMargin(top: 32, bottom: 5),
                          variant: ButtonVariant.OutlineWhiteA700,
                          fontStyle:
                              ButtonFontStyle.GeneralSansMedium16WhiteA700)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 28, right: 29, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                            height: 64,
                            width: 64,
                            variant: IconButtonVariant.OutlineIndigoA100,
                            padding: IconButtonPadding.PaddingAll16,
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconWhiteA70064x64)),
                        Padding(
                            padding: getPadding(top: 13),
                            child: Text("lbl_whatsapp".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtGeneralSansMedium14WhiteA700
                                    .copyWith(height: getVerticalSize(1.06))))
                      ]),
                  Padding(
                      padding: getPadding(left: 18, bottom: 1),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 64,
                                width: 64,
                                variant: IconButtonVariant.OutlineIndigoA100,
                                padding: IconButtonPadding.PaddingAll16,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFileGreenA700)),
                            Padding(
                                padding: getPadding(top: 12),
                                child: Text("lbl_line".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle
                                        .txtGeneralSansMedium14WhiteA700
                                        .copyWith(
                                            height: getVerticalSize(1.06))))
                          ])),
                  Padding(
                      padding: getPadding(left: 19),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 64,
                                width: 64,
                                variant: IconButtonVariant.OutlineIndigoA100,
                                padding: IconButtonPadding.PaddingAll16,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgLink)),
                            Padding(
                                padding: getPadding(top: 13),
                                child: Text("lbl_copy_link".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle
                                        .txtGeneralSansMedium14WhiteA700
                                        .copyWith(
                                            height: getVerticalSize(1.06))))
                          ])),
                  Padding(
                      padding: getPadding(left: 19, bottom: 1),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 64,
                                width: 64,
                                variant: IconButtonVariant.OutlineIndigoA100,
                                padding: IconButtonPadding.PaddingAll16,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSend)),
                            Padding(
                                padding: getPadding(top: 12),
                                child: Text("lbl_ohers".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle
                                        .txtGeneralSansMedium14WhiteA700
                                        .copyWith(
                                            height: getVerticalSize(1.06))))
                          ]))
                ]))));
  }

  onTapArrowleft19() {
    Get.back();
  }
}

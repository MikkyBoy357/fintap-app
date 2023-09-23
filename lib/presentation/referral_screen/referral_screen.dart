import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/cupertino.dart';


import 'controller/referral_controller.dart';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';

import 'package:flutter/material.dart';

import 'models/resferral_response_model.dart';
import 'widgets/referral_widget.dart';

class ReferralScreen extends GetWidget<ReferralController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: size.width,
                  padding: getPadding(
                    left: 24,
                    top: 30,
                    right: 24,
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BkBtn(
                          margin: getMargin(all: 0),
                        ),
                        Text("lbl_share_referral".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(0.99))),
                        HorizontalSpace(width: 20)
                      ])),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          margin: getMargin(left: 24, right: 24, top: 20),
                          padding: getPadding(
                              left: 24, top: 16, right: 24, bottom: 16),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(260.00),
                                    margin: getMargin(top: 2),
                                    child: Text("msg_share_your_referral".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtGeneralSansRegular14
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.16)))),
                                CustomButton(
                                    height: 52,
                                    width: 178,
                                    text: "${Get.arguments}",
                                    margin: getMargin(top: 18),
                                    variant: ButtonVariant.FillBlue50a2,
                                    shape: ButtonShape.RoundedBorder9,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle:
                                        ButtonFontStyle.GeneralSansSemibold24),
                                CustomButton(
                                  height: 44,
                                  width: 279,
                                  text: "lbl_share_code".tr,
                                  margin: getMargin(top: 16),
                                  variant: ButtonVariant.OutlineIndigoA400,
                                  shape: ButtonShape.RoundedBorder9,
                                  padding: ButtonPadding.PaddingT12,
                                  fontStyle: ButtonFontStyle
                                      .GeneralSansMedium14IndigoA400,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 8),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgSendIndigoA400)),
                                  onTap: () => controller.shareText(
                                      "Join me on Fintap (https://fintap.ng) using my referral code ${Get.arguments} and both of us will receive exclusive benefits."),
                                )
                              ])),
                      Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                              padding: getPadding(left: 24, top: 25),
                              child: Text("Referred Users",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle
                                      .txtGeneralSansSemibold16Bluegray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.50),
                                          height: getVerticalSize(1.11))))),
                      // CustomSearchView(
                      //     width: size.width,
                      //     focusNode: FocusNode(),
                      //     controller: controller.textInputController,
                      //     hintText: "msg_type_phone_number".tr,
                      //     margin: getMargin(top: 12, right: 24, left: 24),
                      //     suffix: Padding(
                      //         padding: EdgeInsets.only(
                      //             right: getHorizontalSize(15.00)),
                      //         child: IconButton(
                      //             onPressed: () =>
                      //                 controller.textInputController.clear,
                      //             icon: Icon(Icons.clear,
                      //                 color: Colors.grey.shade600))),
                      //     suffixConstraints: BoxConstraints(
                      //         maxHeight: getVerticalSize(52.00))),
                      Container(
                          margin: getMargin(left: 24, top: 16, right: 24),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Obx(() => controller.isLoading.value
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
                              : controller.referralModel.value.data!.isEmpty
                                  ? Container(
                                      height: getVerticalSize(300),
                                      alignment: Alignment.center,
                                      margin: getPadding(
                                        left: 24,
                                        right: 24,
                                        bottom: 20,
                                      ),
                                      child: Text("No Referrals Found",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtGeneralSansRegular14
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.16))))
                                  : ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(4.00));
                                      },
                                      itemCount: controller
                                          .referralModel.value.data!.length,
                                      itemBuilder: (context, index) {
                                        ReferralData data = controller
                                            .referralModel.value.data![index];
                                        return Referral(data);
                                      }))),
                    ],
                  ),
                ),
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}

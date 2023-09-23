import 'package:fintap/widgets/spacing.dart';

import 'controller/coin_reward_detail_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

//ignore: must_be_immutable
class CoinRewardDetailScreen extends StatelessWidget {
  CoinRewardDetailController controller;
  CoinRewardDetailScreen(this.controller);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .97,
      color: ColorConstant.gray100,
      child: Stack(
        children: [
          Container(
            height: size.height * .5,
            color: ColorConstant.gray200,
          ),
          Column(
            children: [
              VerticalSpace(height: 24),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: getPadding(right: 24),
                    child: Icon(
                      Icons.clear,
                      color: ColorConstant.black900,
                    ),
                  ),
                ),
              ),
              Container(
                  height: getVerticalSize(110.00),
                  width: getHorizontalSize(142.00),
                  margin: getMargin(top: 16, bottom: 57),
                  padding: getPadding(left: 43, top: 27, right: 43, bottom: 27),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgIconWhiteA700),
                          fit: BoxFit.cover)),
                  child: Stack(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGoogleplay,
                        height: getSize(56.00),
                        width: getSize(56.00),
                        alignment: Alignment.center)
                  ])),
              Container(
                width: size.width,
                margin: getMargin(left: 24, right: 24),
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 16),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(top: 5),
                        child: Text("msg_google_play_cash".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansMedium16Bluegray900
                                .copyWith(height: getVerticalSize(1.11)))),
                    Padding(
                        padding: getPadding(top: 2),
                        child: Text("lbl_192".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansSemibold16
                                .copyWith(height: getVerticalSize(0.93)))),
                    Container(
                        height: getVerticalSize(1.00),
                        width: getHorizontalSize(295.00),
                        margin: getMargin(top: 6),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray200)),
                    Padding(
                        padding: getPadding(top: 7),
                        child: Row(children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgCalendar,
                              height: getSize(16.00),
                              width: getSize(16.00),
                              margin: getMargin(bottom: 2)),
                          Padding(
                              padding: getPadding(left: 4, top: 1),
                              child: Text("msg_validity_7_days".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle
                                      .txtGeneralSansMedium12Bluegray200
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.50),
                                          height: getVerticalSize(0.99))))
                        ])),
                  ],
                ),
              ),
              VerticalSpace(height: 16),
              Container(
                  width: size.width,
                  margin: getMargin(left: 24, right: 24),
                  padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: getPadding(all: 16),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("msg_terms_conditions".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansSemibold14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06))),
                                      Container(
                                          width: getHorizontalSize(264.00),
                                          margin: getMargin(top: 10),
                                          child: Text(
                                              "msg_lorem_ipsum_dolor3".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.16)))),
                                      Container(
                                          width: getHorizontalSize(288.00),
                                          margin: getMargin(
                                              left: 4, top: 12, bottom: 1),
                                          child: Text(
                                              "msg_nunc_quis_bibendum".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.16))))
                                    ]))),
                      ])),
            ],
          ),
          CustomButton(
              height: 56,
              width: size.width,
              margin: getMargin(left: 24, right: 24, bottom: 20),
              text: "msg_claim_for_1_500".tr,
              alignment: Alignment.bottomCenter)
        ],
      ),
    );
  }

  onTapArrowleft2() {
    Get.back();
  }
}

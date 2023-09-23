import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/spacing.dart';

import '../coin_reward_screen/widgets/coin_item_widget.dart';
import '../coin_reward_screen/widgets/content2_item_widget.dart';
import 'controller/coin_reward_controller.dart';
import 'models/coin_item_model.dart';
import 'models/content2_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CoinRewardScreen extends GetWidget<CoinRewardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                backgroundColor: ColorConstant.gray200,
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: BkBtn(
                  margin: getMargin(left: 24, bottom: 2),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_daily_reward".tr)),
            extendBodyBehindAppBar: true,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(360.00),
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              width: size.width,
                                              height: getVerticalSize(290),
                                              padding: getPadding(
                                                  top: 12, bottom: 12),
                                              decoration: AppDecoration
                                                  .fillGray200
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder24),
                                            )),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                    width: size.width,
                                                    margin: getMargin(
                                                      left: 24,
                                                      top: 60,
                                                      right: 24,
                                                    ),
                                                    padding: getPadding(
                                                        top: 10, bottom: 10),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder16),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5),
                                                              child: Text(
                                                                  "lbl_your_coins"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtGeneralSansMedium12Bluegray200
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(0.99)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgLocation,
                                                                        height: getSize(
                                                                            28.00),
                                                                        width: getSize(
                                                                            28.00),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                5)),
                                                                    HorizontalSpace(
                                                                        width:
                                                                            8),
                                                                    Text(
                                                                        "lbl_1_450"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .start,
                                                                        style: AppStyle.txtGeneralSansSemibold24IndigoA400.copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(1.00),
                                                                            height: getVerticalSize(0.86)))
                                                                  ]))
                                                        ])),
                                                VerticalSpace(height: 20),
                                                Container(
                                                    margin: getMargin(
                                                        left: 24, right: 24),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder16),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      80.00),
                                                              child: Obx(() => ListView
                                                                  .separated(
                                                                      scrollDirection: Axis
                                                                          .horizontal,
                                                                      physics:
                                                                          BouncingScrollPhysics(),
                                                                      separatorBuilder:
                                                                          (context,
                                                                              index) {
                                                                        return SizedBox(
                                                                            width:
                                                                                getVerticalSize(8.00));
                                                                      },
                                                                      itemCount: controller
                                                                          .coinRewardModelObj
                                                                          .value
                                                                          .coinItemList
                                                                          .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        CoinItemModel model = controller
                                                                            .coinRewardModelObj
                                                                            .value
                                                                            .coinItemList[index];
                                                                        return CoinItemWidget(
                                                                          model,
                                                                          index:
                                                                              index,
                                                                        );
                                                                      }))),
                                                          CustomButton(
                                                              height: 44,
                                                              width: 295,
                                                              text:
                                                                  "msg_check_in_today"
                                                                      .tr,
                                                              margin: getMargin(
                                                                  top: 13),
                                                              shape: ButtonShape
                                                                  .RoundedBorder9,
                                                              padding: ButtonPadding
                                                                  .PaddingAll11,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .GeneralSansMedium14)
                                                        ])),
                                              ],
                                            ))
                                      ])),
                              Container(
                                  width: size.width,
                                  margin:
                                      getMargin(left: 24, top: 25, right: 24),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("msg_redeem_your_coin".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansSemibold16Bluegray900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.50),
                                                          height:
                                                              getVerticalSize(
                                                                  1.11))),
                                              InkWell(
                                                onTap: () => Get.toNamed(
                                                    AppRoutes.myRewardScreen),
                                                child: Padding(
                                                    padding: getPadding(
                                                      all: 2,
                                                    ),
                                                    child: Text(
                                                        "lbl_my_rewards".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: AppStyle
                                                            .txtGeneralSansSemibold14
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.27)))),
                                              )
                                            ]),
                                        Container(
                                            alignment: Alignment.topCenter,
                                            margin: getMargin(top: 14),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Obx(() => ListView.separated(
                                                padding: getPadding(top: 12),
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return CustomDivider();
                                                },
                                                itemCount: controller
                                                    .coinRewardModelObj
                                                    .value
                                                    .content2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Content2ItemModel model =
                                                      controller
                                                              .coinRewardModelObj
                                                              .value
                                                              .content2ItemList[
                                                          index];
                                                  return Content2ItemWidget(
                                                      model);
                                                })))
                                      ]))
                            ]))))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}

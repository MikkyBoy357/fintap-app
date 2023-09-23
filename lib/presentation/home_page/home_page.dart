import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:upgrader/upgrader.dart';

import '../../core/utils/capitalize_all_word.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/loading_skeleton.dart';
import '../home_container_screen/controller/home_container_controller.dart';
import '../top_up_with_bank_transfer_screen/controller/top_up_with_bank_transfer_controller.dart';
import '../top_up_with_bank_transfer_screen/top_up_with_bank_transfer_screen.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/transaction_model.dart';
import 'widgets/transaction_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: UpgradeAlert(
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            backgroundColor: ColorConstant.indigo500,
            height: getVerticalSize(
              60.00,
            ),
            leadingWidth: 74,
            leading: CustomImageView(
              imagePath: ImageConstant.appLogoPrimary,
              width: 40,
              height: 40,
              margin: getMargin(left: 20, top: 10),
            ),
            title: Padding(
              padding: getPadding(
                left: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        right: 25,
                      ),
                      child: Text(
                        "lbl_welcome".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyle.txtGeneralSansRegular12.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            0.99,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(() => controller.isLoading.value
                        ? ShimmerLoading(
                            height: 24,
                            width: 90,
                          )
                        : Text(
                            capitalizeAllWord(
                                "${controller.accountModel.value.data!.profile!.first.firstname} ${controller.accountModel.value.data!.profile!.first.lastname}"),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansMedium14WhiteA700
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.50,
                              ),
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          )),
                  ),
                ],
              ),
            ),
            actions: [
              // CustomIconButton(
              //   height: 40,
              //   width: 40,
              //   margin: getMargin(
              //     left: 24,
              //     right: 24,
              //   ),
              //   onTap: () => Get.toNamed(
              //       AppRoutes.notificationPromotionTabContainerScreen),
              //   variant: IconButtonVariant.OutlineIndigoA100,
              //   padding: IconButtonPadding.PaddingAll7,
              //   child: CustomImageView(
              //     svgPath: ImageConstant.imgNotification,
              //   ),
              // ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () {
              return Future.delayed(Duration(seconds: 1), () {
                print("Pulled");
                controller.fetchUserProfile();
                controller.fetchUserTransactions();
              });
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: getPadding(
                      top: 15,
                    ),
                    height: getVerticalSize(
                      380.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.homeBackground,
                          width: size.width,
                          margin: getMargin(bottom: 10),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowdown,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: size.width,
                            padding: getPadding(
                              top: 80,
                              bottom: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  // onTap: () =>
                                  //     Get.toNamed(AppRoutes.coinRewardScreen),
                                  child: Container(
                                    margin: getMargin(
                                      left: 24,
                                      top: 16,
                                      right: 24,
                                    ),
                                    width: size.width,
                                    padding: getPadding(
                                      all: 12,
                                    ),
                                    decoration:
                                        AppDecoration.fillIndigoA400.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: getPadding(all: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "lbl_total_balance".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium12
                                                        .copyWith(
                                                      height: getVerticalSize(
                                                        0.99,
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      controller
                                                          .toggleVisibility();
                                                    },
                                                    icon: Icon(
                                                      controller
                                                              .showBalance.value
                                                          ? Icons.visibility_off
                                                          : Icons.visibility,
                                                      color:
                                                          ColorConstant.blue100,
                                                      size: 14,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 14,
                                                ),
                                                child: Obx(
                                                  () => controller
                                                          .isLoading.value
                                                      ? ShimmerLoading(
                                                          height: 24,
                                                          width: 90,
                                                        )
                                                      : Text(
                                                          // "lbl_usd_12_850_55".tr,
                                                          controller.showBalance
                                                                  .value
                                                              ? "NGN " +
                                                                  NumberFormat
                                                                      .currency(
                                                                    symbol:
                                                                        '', // currency symbol
                                                                    decimalDigits:
                                                                        2, // number of decimal places
                                                                  ).format(double
                                                                      .parse(
                                                                          "${controller.accountModel.value.data!.wallet!.first.mainBalance}"))
                                                              : "*******",

                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: AppStyle
                                                              .txtGeneralSansSemibold24
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              1.00,
                                                            ),
                                                            height:
                                                                getVerticalSize(
                                                              0.86,
                                                            ),
                                                          ),
                                                        ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Align(
                                        //   alignment: AlignmentDirectional.topEnd,
                                        //   child: Container(
                                        //     alignment: Alignment.center,
                                        //     width: getHorizontalSize(70),
                                        //     height: getVerticalSize(24),
                                        //     decoration: AppDecoration.fillIndigo500
                                        //         .copyWith(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(12)),
                                        //     child: Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment.center,
                                        //       crossAxisAlignment:
                                        //           CrossAxisAlignment.center,
                                        //       children: [
                                        //         Container(
                                        //           margin: getMargin(
                                        //             right: 2,
                                        //           ),
                                        //           child: CustomImageView(
                                        //             svgPath: ImageConstant
                                        //                 .imgSearchYellow500,
                                        //           ),
                                        //         ),
                                        //         Text(
                                        //           "lbl_1_450".tr,
                                        //           style: AppStyle
                                        //               .txtGeneralSansMedium12,
                                        //         )
                                        //       ],
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 18,
                                    bottom: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: InkWell(
                                          onTap: () => Get.toNamed(
                                              AppRoutes.sendMoneyScreen,
                                              arguments: controller
                                                  .accountModel
                                                  .value
                                                  .data!
                                                  .wallet!
                                                  .first
                                                  .mainBalance),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                height: 56,
                                                width: 56,
                                                variant: IconButtonVariant
                                                    .FillLightgreen400,
                                                shape: IconButtonShape
                                                    .RoundedBorder13,
                                                padding: IconButtonPadding
                                                    .PaddingAll16,
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClock,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 8,
                                                ),
                                                child: Text(
                                                  "lbl_send".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium12Gray100
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      0.99,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 29,
                                        ),
                                        child: InkWell(
                                          // onTap: () =>
                                          //     Get.toNamed(AppRoutes.topUpScreen),
                                          onTap: () => Get.bottomSheet(
                                              TopUpWithBankTransferScreen(Get.put(
                                                  TopUpWithBankTransferController())),
                                              isScrollControlled: true),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                height: 56,
                                                width: 56,
                                                variant: IconButtonVariant
                                                    .FillLightgreen400,
                                                shape: IconButtonShape
                                                    .RoundedBorder13,
                                                padding: IconButtonPadding
                                                    .PaddingAll16,
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 9,
                                                ),
                                                child: Text(
                                                  "Deposit".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium12Gray100
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      0.99,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // InkWell(
                                      //   onTap: () =>
                                      //       Get.toNamed(AppRoutes.scanScreen),
                                      //   child: Padding(
                                      //     padding: getPadding(
                                      //       left: 29,
                                      //       bottom: 1,
                                      //     ),
                                      //     child: Column(
                                      //       mainAxisAlignment:
                                      //           MainAxisAlignment.start,
                                      //       children: [
                                      //         CustomIconButton(
                                      //           height: 56,
                                      //           width: 56,
                                      //           variant: IconButtonVariant
                                      //               .FillLightgreen400,
                                      //           shape:
                                      //               IconButtonShape.RoundedBorder13,
                                      //           padding:
                                      //               IconButtonPadding.PaddingAll16,
                                      //           child: CustomImageView(
                                      //             svgPath:
                                      //                 ImageConstant.imgMinimize,
                                      //           ),
                                      //         ),
                                      //         Padding(
                                      //           padding: getPadding(
                                      //             top: 8,
                                      //           ),
                                      //           child: Text(
                                      //             "lbl_scan".tr,
                                      //             overflow: TextOverflow.ellipsis,
                                      //             textAlign: TextAlign.start,
                                      //             style: AppStyle
                                      //                 .txtGeneralSansMedium12Gray100
                                      //                 .copyWith(
                                      //               height: getVerticalSize(
                                      //                 0.99,
                                      //               ),
                                      //             ),
                                      //           ),
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: getPadding(
                                          left: 29,
                                        ),
                                        child: InkWell(
                                          // onTap: () => Get.toNamed(
                                          //     AppRoutes.sendMoneyToFriendOneScreen),
                                          onTap: () => Get.find<
                                                  HomeContainerController>()
                                              .changeSelectedTab(
                                                  BottomBarEnum.Wallet),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                height: 56,
                                                width: 56,
                                                variant: IconButtonVariant
                                                    .FillLightgreen400,
                                                shape: IconButtonShape
                                                    .RoundedBorder13,
                                                padding: IconButtonPadding
                                                    .PaddingAll16,
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMinimize,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 9,
                                                ),
                                                child: Text(
                                                  "Invest".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium12Gray100
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      0.99,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 29,
                                        ),
                                        child: InkWell(
                                          onTap: () => Get.toNamed(
                                              AppRoutes.payBillScreen),
                                          // onTap: () => Get.toNamed(
                                          //     AppRoutes.sendMoneyToFriendOneScreen),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                height: 56,
                                                width: 56,
                                                variant: IconButtonVariant
                                                    .FillLightgreen400,
                                                shape: IconButtonShape
                                                    .RoundedBorder13,
                                                padding: IconButtonPadding
                                                    .PaddingAll16,
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClock,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 9,
                                                ),
                                                child: Text(
                                                  "Bills".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium12Gray100
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      0.99,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 13,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "msg_last_transaction".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansSemibold16Bluegray900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: GestureDetector(
                            onTap: () => Get.find<HomeContainerController>()
                                .changeSelectedTab(BottomBarEnum.History),
                            //  Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => HomeContainerScreen(),
                            //     settings: RouteSettings(
                            //         name: AppRoutes.historyTabContainerScreen),
                            //   ),
                            // ),
                            child: Text(
                              "See All",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtGeneralSansSemibold14.copyWith(
                                height: getVerticalSize(
                                  1.27,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => controller.isTransactionLoading.value
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
                        : controller.transactionModel.value.data!.isEmpty
                            ? Container(
                                height: getVerticalSize(300),
                                alignment: Alignment.center,
                                margin: getPadding(
                                  left: 24,
                                  right: 24,
                                  bottom: 20,
                                ),
                                child: Text("No Latest Transactions Found",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtGeneralSansRegular14
                                        .copyWith(
                                            height: getVerticalSize(1.16))))
                            : ListView.separated(
                                reverse: true,
                                padding: getPadding(
                                    left: 24, right: 24, top: 20, bottom: 20),
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                  );
                                },
                                itemCount: controller
                                        .transactionModel.value.data!.isEmpty
                                    ? 0
                                    : controller.transactionModel.value.data!
                                                .length >
                                            10
                                        ? 10
                                        : controller.transactionModel.value
                                            .data!.length,
                                itemBuilder: (context, index) {
                                  Data data = controller
                                      .transactionModel.value.data![index];
                                  if (controller
                                      .transactionModel.value.data!.isEmpty) {
                                    return Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "No Transaction Found",
                                          style: AppStyle
                                              .txtGeneralSansSemibold14
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.27,
                                            ),
                                          ),
                                        ));
                                  }

                                  return TransactionItemWidget(
                                    data,
                                  );
                                },
                              ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

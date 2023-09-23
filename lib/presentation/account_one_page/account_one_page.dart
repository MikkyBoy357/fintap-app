import 'package:fintap/presentation/logout_bottomsheet/controller/logout_controller.dart';
import 'package:fintap/presentation/logout_bottomsheet/logout_bottomsheet.dart';

import '../../core/utils/capitalize_all_word.dart';
import '../../widgets/loading_skeleton.dart';
import 'controller/account_one_controller.dart';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_circleimage.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountOnePage extends StatelessWidget {
  AccountOneController controller = Get.put(AccountOneController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              padding: getPadding(
                top: 12,
                bottom: 12,
              ),
              decoration: AppDecoration.fillIndigo500.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: getVerticalSize(
                      56.00,
                    ),
                    leadingWidth: 80,
                    leading: AppbarCircleimage(
                      imagePath: ImageConstant.userNullAvatar,
                      margin: getMargin(
                        left: 24,
                      ),
                    ),
                    title: Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => controller.isLoading.value
                                ? ShimmerLoading(
                                    height: 15,
                                    width: 90,
                                  )
                                : AppbarSubtitle1(
                                    text: capitalizeAllWord(
                                        "${controller.accountModel.value.data!.profile!.first.firstname} ${controller.accountModel.value.data!.profile!.first.lastname}"),
                                    margin: getMargin(
                                      right: 60,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            height: getVerticalSize(
                              2,
                            ),
                          ),
                          Obx(
                            () => controller.isLoading.value
                                ? ShimmerLoading(
                                    height: 15,
                                    width: 180,
                                  )
                                : AppbarSubtitle2(
                                    text:
                                        "${controller.accountModel.value.data!.profile!.first.email}"
                                            .tr,
                                    margin: getMargin(
                                      top: 2,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // InkWell(
                  //   // onTap: () => Get.toNamed(AppRoutes.completeProfileScreen),
                  //   child: Container(
                  //     margin: getMargin(
                  //       left: 24,
                  //       top: 24,
                  //       right: 24,
                  //       bottom: 12,
                  //     ),
                  //     padding: getPadding(
                  //       left: 16,
                  //       top: 11,
                  //       right: 16,
                  //       bottom: 11,
                  //     ),
                  //     decoration: AppDecoration.fillIndigoA400.copyWith(
                  //       borderRadius: BorderRadiusStyle.roundedBorder12,
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Padding(
                  //           padding: getPadding(
                  //             top: 2,
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "msg_complete_your_profile".tr,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.start,
                  //                 style: AppStyle.txtGeneralSansMedium14Gray100
                  //                     .copyWith(
                  //                   height: getVerticalSize(
                  //                     1.06,
                  //                   ),
                  //                 ),
                  //               ),
                  //               Padding(
                  //                 padding: getPadding(
                  //                   top: 7,
                  //                 ),
                  //                 child: Container(
                  //                   height: getVerticalSize(
                  //                     8.00,
                  //                   ),
                  //                   width: getHorizontalSize(
                  //                     259.00,
                  //                   ),
                  //                   decoration: BoxDecoration(
                  //                     color: ColorConstant.indigoA100,
                  //                     borderRadius: BorderRadius.circular(
                  //                       getHorizontalSize(
                  //                         4.00,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   child: ClipRRect(
                  //                       borderRadius: BorderRadius.circular(
                  //                         getHorizontalSize(
                  //                           4.00,
                  //                         ),
                  //                       ),
                  //                       child: Obx(
                  //                         () => controller.isLoading.value
                  //                             ? LinearProgressIndicator(
                  //                                 value: 0.0,
                  //                                 backgroundColor:
                  //                                     ColorConstant.indigoA100,
                  //                                 valueColor:
                  //                                     AlwaysStoppedAnimation<
                  //                                         Color>(
                  //                                   ColorConstant.whiteA700,
                  //                                 ),
                  //                               )
                  //                             : LinearProgressIndicator(
                  //                                 value: double.parse(controller
                  //                                             .accountModel
                  //                                             .value
                  //                                             .data!
                  //                                             .profile!
                  //                                             .first
                  //                                             .emailVerified! +
                  //                                         controller
                  //                                             .accountModel
                  //                                             .value
                  //                                             .data!
                  //                                             .profile!
                  //                                             .first
                  //                                             .phoneVerified! +
                  //                                         controller
                  //                                             .accountModel
                  //                                             .value
                  //                                             .data!
                  //                                             .profile!
                  //                                             .first
                  //                                             .kycVerified!) /
                  //                                     3.toDouble(),
                  //                                 backgroundColor:
                  //                                     ColorConstant.indigoA100,
                  //                                 valueColor:
                  //                                     AlwaysStoppedAnimation<
                  //                                         Color>(
                  //                                   ColorConstant.whiteA700,
                  //                                 ),
                  //                               ),
                  //                       )),
                  //                 ),
                  //               ),
                  //               //       Padding(
                  //               //         padding: getPadding(
                  //               //           top: 11,
                  //               //         ),
                  //               //         child: Row(
                  //               //           children: [
                  //               //             Obx(() => controller.isLoading.value
                  //               //                 ? Text(
                  //               //                     "(0/3)",
                  //               //                     overflow: TextOverflow.ellipsis,
                  //               //                     textAlign: TextAlign.start,
                  //               //                     style: AppStyle
                  //               //                         .txtGeneralSansRegular12
                  //               //                         .copyWith(
                  //               //                       height: getVerticalSize(
                  //               //                         1.23,
                  //               //                       ),
                  //               //                     ),
                  //               //                   )
                  //               //                 : Text(
                  //               //                     "(${int.parse(controller.accountModel.value.data!.profile!.first.emailVerified! + controller.accountModel.value.data!.profile!.first.phoneVerified! + controller.accountModel.value.data!.profile!.first.kycVerified!)}/3)",
                  //               //                     overflow: TextOverflow.ellipsis,
                  //               //                     textAlign: TextAlign.start,
                  //               //                     style: AppStyle
                  //               //                         .txtGeneralSansRegular12
                  //               //                         .copyWith(
                  //               //                       height: getVerticalSize(
                  //               //                         1.23,
                  //               //                       ),
                  //               //                     ),
                  //               //                   )),
                  //               //             Obx(
                  //               //               () => controller.isLoading.value
                  //               //                   ? Text(
                  //               //                       " ",
                  //               //                       overflow: TextOverflow.ellipsis,
                  //               //                       textAlign: TextAlign.start,
                  //               //                       style: AppStyle
                  //               //                           .txtGeneralSansRegular12
                  //               //                           .copyWith(
                  //               //                         height: getVerticalSize(
                  //               //                           1.23,
                  //               //                         ),
                  //               //                       ),
                  //               //                     )
                  //               //                   : Row(
                  //               //                       children: [
                  //               //                         controller
                  //               //                                     .accountModel
                  //               //                                     .value
                  //               //                                     .data!
                  //               //                                     .profile!
                  //               //                                     .first
                  //               //                                     .emailVerified ==
                  //               //                                 "1"
                  //               //                             ? Text(
                  //               //                                 "",
                  //               //                                 overflow: TextOverflow
                  //               //                                     .ellipsis,
                  //               //                                 textAlign:
                  //               //                                     TextAlign.start,
                  //               //                                 style: AppStyle
                  //               //                                     .txtGeneralSansRegular12
                  //               //                                     .copyWith(
                  //               //                                   height:
                  //               //                                       getVerticalSize(
                  //               //                                     1.23,
                  //               //                                   ),
                  //               //                                 ),
                  //               //                               )
                  //               //                             : Text(
                  //               //                                 "| Verify Email Address",
                  //               //                                 overflow: TextOverflow
                  //               //                                     .ellipsis,
                  //               //                                 textAlign:
                  //               //                                     TextAlign.start,
                  //               //                                 style: AppStyle
                  //               //                                     .txtGeneralSansRegular12
                  //               //                                     .copyWith(
                  //               //                                   height:
                  //               //                                       getVerticalSize(
                  //               //                                     1.23,
                  //               //                                   ),
                  //               //                                 ),
                  //               //                               ),
                  //               //                         controller
                  //               //                                     .accountModel
                  //               //                                     .value
                  //               //                                     .data!
                  //               //                                     .profile!
                  //               //                                     .first
                  //               //                                     .phoneVerified ==
                  //               //                                 "1"
                  //               //                             ? Text(
                  //               //                                 "",
                  //               //                                 overflow: TextOverflow
                  //               //                                     .ellipsis,
                  //               //                                 textAlign:
                  //               //                                     TextAlign.start,
                  //               //                                 style: AppStyle
                  //               //                                     .txtGeneralSansRegular12
                  //               //                                     .copyWith(
                  //               //                                   height:
                  //               //                                       getVerticalSize(
                  //               //                                     1.23,
                  //               //                                   ),
                  //               //                                 ),
                  //               //                               )
                  //               //                             : Text(
                  //               //                                 "| Verify Phone Number",
                  //               //                                 overflow: TextOverflow
                  //               //                                     .ellipsis,
                  //               //                                 textAlign:
                  //               //                                     TextAlign.start,
                  //               //                                 style: AppStyle
                  //               //                                     .txtGeneralSansRegular12
                  //               //                                     .copyWith(
                  //               //                                   height:
                  //               //                                       getVerticalSize(
                  //               //                                     1.23,
                  //               //                                   ),
                  //               //                                 ),
                  //               //                               ),
                  //               //                         controller
                  //               //                                     .accountModel
                  //               //                                     .value
                  //               //                                     .data!
                  //               //                                     .profile!
                  //               //                                     .first
                  //               //                                     .emailVerified ==
                  //               //                                 '1'
                  //               //                             ? controller
                  //               //                                         .accountModel
                  //               //                                         .value
                  //               //                                         .data!
                  //               //                                         .profile!
                  //               //                                         .first
                  //               //                                         .kycVerified ==
                  //               //                                     "1"
                  //               //                                 ? Text(
                  //               //                                     "",
                  //               //                                     overflow:
                  //               //                                         TextOverflow
                  //               //                                             .ellipsis,
                  //               //                                     textAlign:
                  //               //                                         TextAlign
                  //               //                                             .start,
                  //               //                                     style: AppStyle
                  //               //                                         .txtGeneralSansRegular12
                  //               //                                         .copyWith(
                  //               //                                       height:
                  //               //                                           getVerticalSize(
                  //               //                                         1.23,
                  //               //                                       ),
                  //               //                                     ),
                  //               //                                   )
                  //               //                                 : Text(
                  //               //                                     "| Verify KYC",
                  //               //                                     overflow:
                  //               //                                         TextOverflow
                  //               //                                             .ellipsis,
                  //               //                                     textAlign:
                  //               //                                         TextAlign
                  //               //                                             .start,
                  //               //                                     style: AppStyle
                  //               //                                         .txtGeneralSansRegular12
                  //               //                                         .copyWith(
                  //               //                                       height:
                  //               //                                           getVerticalSize(
                  //               //                                         1.23,
                  //               //                                       ),
                  //               //                                     ),
                  //               //                                   )
                  //               //                             : Text(''),
                  //               //                       ],
                  //               //                     ),
                  //               //             )
                  //               //           ],
                  //               //         ),
                  //               //       ),
                  //             ],
                  //           ),
                  //         ),
                  //         CustomImageView(
                  //           svgPath: ImageConstant.imgArrowrightWhiteA700,
                  //           rotateifRtl: true,
                  //           height: getSize(
                  //             24.00,
                  //           ),
                  //           width: getSize(
                  //             24.00,
                  //           ),
                  //           margin: getMargin(
                  //             left: 12,
                  //             top: 20,
                  //             bottom: 20,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 22,
                    right: 24,
                    bottom: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_reward".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style:
                            AppStyle.txtGeneralSansMedium14Bluegray200.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.00,
                          ),
                          height: getVerticalSize(
                            0.85,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: getMargin(
                          top: 14,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Container(
                            //   padding: getPadding(
                            //     all: 12,
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       CustomIconButton(
                            //         height: 40,
                            //         width: 40,
                            //         variant: IconButtonVariant.FillBlue50,
                            //         shape: IconButtonShape.CircleBorder20,
                            //         child: CustomImageView(
                            //           svgPath:
                            //               ImageConstant.imgClockIndigoA40040x40,
                            //         ),
                            //       ),
                            //       Padding(
                            //         padding: getPadding(
                            //           left: 12,
                            //           top: 11,
                            //           bottom: 9,
                            //         ),
                            //         child: Text(
                            //           "lbl_my_coins".tr,
                            //           overflow: TextOverflow.ellipsis,
                            //           textAlign: TextAlign.start,
                            //           style: AppStyle
                            //               .txtGeneralSansMedium14Bluegray900
                            //               .copyWith(
                            //             height: getVerticalSize(
                            //               1.06,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       Spacer(),
                            //       CustomImageView(
                            //         rotateifRtl: true,
                            //         svgPath: ImageConstant.imgArrowright,
                            //         height: getSize(
                            //           24.00,
                            //         ),
                            //         width: getSize(
                            //           24.00,
                            //         ),
                            //         margin: getMargin(
                            //           top: 8,
                            //           bottom: 8,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            // Container(
                            //   margin: getMargin(
                            //     top: 4,
                            //   ),
                            //   padding: getPadding(
                            //     all: 12,
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       Card(
                            //         clipBehavior: Clip.antiAlias,
                            //         elevation: 0,
                            //         margin: EdgeInsets.all(0),
                            //         color: ColorConstant.blue50,
                            //         shape: RoundedRectangleBorder(
                            //           borderRadius:
                            //               BorderRadiusStyle.circleBorder21,
                            //         ),
                            //         child: Container(
                            //           height: getSize(
                            //             40.00,
                            //           ),
                            //           width: getSize(
                            //             40.00,
                            //           ),
                            //           padding: getPadding(
                            //             all: 12,
                            //           ),
                            //           decoration:
                            //               AppDecoration.fillBlue50.copyWith(
                            //             borderRadius:
                            //                 BorderRadiusStyle.circleBorder21,
                            //           ),
                            //           child: Stack(
                            //             children: [
                            //               CustomImageView(
                            //                 svgPath: ImageConstant.imgOffer,
                            //                 height: getSize(
                            //                   16.00,
                            //                 ),
                            //                 width: getSize(
                            //                   16.00,
                            //                 ),
                            //                 alignment: Alignment.center,
                            //               ),
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //       Padding(
                            //         padding: getPadding(
                            //           left: 12,
                            //           top: 11,
                            //           bottom: 9,
                            //         ),
                            //         child: Text(
                            //           "lbl_my_rewards".tr,
                            //           overflow: TextOverflow.ellipsis,
                            //           textAlign: TextAlign.start,
                            //           style: AppStyle
                            //               .txtGeneralSansMedium14Bluegray900
                            //               .copyWith(
                            //             height: getVerticalSize(
                            //               1.06,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       Spacer(),
                            //       CustomImageView(
                            //         svgPath: ImageConstant.imgArrowright,
                            //         rotateifRtl: true,
                            //         height: getSize(
                            //           24.00,
                            //         ),
                            //         width: getSize(
                            //           24.00,
                            //         ),
                            //         margin: getMargin(
                            //           top: 8,
                            //           bottom: 8,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            InkWell(
                              onTap: () => Get.toNamed(AppRoutes.referralScreen,
                                  arguments:
                                      "${controller.accountModel.value.data!.profile!.first.refCode}"),
                              child: Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      variant: IconButtonVariant.FillBlue50,
                                      shape: IconButtonShape.CircleBorder20,
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgAirplaneIndigoA400,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        "lbl_referral".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 8,
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
                          top: 14,
                        ),
                        child: Text(
                          "lbl_app_setting".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium14Bluegray200
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              1.00,
                            ),
                            height: getVerticalSize(
                              0.85,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: getMargin(
                          top: 14,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => Get.toNamed(
                                  AppRoutes.profileSettingOneScreen,
                                  arguments: controller
                                      .accountModel.value.data!.profile!.first),
                              child: Container(
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "msg_profile_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // InkWell(
                            //   onTap: () =>
                            //       Get.toNamed(AppRoutes.notificationScreen),
                            //   child: Container(
                            //     margin: getMargin(
                            //       top: 4,
                            //     ),
                            //     padding: getPadding(
                            //       left: 12,
                            //       top: 16,
                            //       right: 12,
                            //       bottom: 16,
                            //     ),
                            //     decoration: AppDecoration.outlineGray200,
                            //     child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         Padding(
                            //           padding: getPadding(
                            //             top: 2,
                            //             bottom: 2,
                            //           ),
                            //           child: Text(
                            //             "lbl_notification".tr,
                            //             overflow: TextOverflow.ellipsis,
                            //             textAlign: TextAlign.start,
                            //             style: AppStyle
                            //                 .txtGeneralSansMedium14Bluegray900
                            //                 .copyWith(
                            //               height: getVerticalSize(
                            //                 1.06,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         CustomImageView(
                            //           svgPath: ImageConstant.imgArrowright,
                            //           rotateifRtl: true,
                            //           height: getSize(
                            //             24.00,
                            //           ),
                            //           width: getSize(
                            //             24.00,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            InkWell(
                              onTap: () => Get.toNamed(
                                  AppRoutes.securitySettingScreen,
                                  arguments: controller
                                      .accountModel.value.data!.profile!.first),
                              child: Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "msg_security_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // InkWell(
                            //   onTap: () =>
                            //       Get.toNamed(AppRoutes.languageScreen),
                            //   child: Container(
                            //     margin: getMargin(
                            //       top: 4,
                            //     ),
                            //     padding: getPadding(
                            //       left: 12,
                            //       top: 16,
                            //       right: 12,
                            //       bottom: 16,
                            //     ),
                            //     decoration: AppDecoration.outlineGray200,
                            //     child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         Padding(
                            //           padding: getPadding(
                            //             top: 3,
                            //             bottom: 1,
                            //           ),
                            //           child: Text(
                            //             "lbl_language".tr,
                            //             overflow: TextOverflow.ellipsis,
                            //             textAlign: TextAlign.start,
                            //             style: AppStyle
                            //                 .txtGeneralSansMedium14Bluegray900
                            //                 .copyWith(
                            //               height: getVerticalSize(
                            //                 1.06,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         CustomImageView(
                            //           svgPath: ImageConstant.imgArrowright,
                            //           rotateifRtl: true,
                            //           height: getSize(
                            //             24.00,
                            //           ),
                            //           width: getSize(
                            //             24.00,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            // InkWell(
                            //   onTap: () =>
                            //       Get.toNamed(AppRoutes.linkedAccountScreen),
                            //   child: Container(
                            //     margin: getMargin(
                            //       top: 4,
                            //     ),
                            //     padding: getPadding(
                            //       left: 12,
                            //       top: 16,
                            //       right: 12,
                            //       bottom: 16,
                            //     ),
                            //     decoration: AppDecoration.outlineGray200,
                            //     child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         Padding(
                            //           padding: getPadding(
                            //             top: 2,
                            //             bottom: 2,
                            //           ),
                            //           child: Text(
                            //             "lbl_linked_account".tr,
                            //             overflow: TextOverflow.ellipsis,
                            //             textAlign: TextAlign.start,
                            //             style: AppStyle
                            //                 .txtGeneralSansMedium14Bluegray900
                            //                 .copyWith(
                            //               height: getVerticalSize(
                            //                 1.06,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         CustomImageView(
                            //           svgPath: ImageConstant.imgArrowright,
                            //           rotateifRtl: true,
                            //           height: getSize(
                            //             24.00,
                            //           ),
                            //           width: getSize(
                            //             24.00,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   margin: getMargin(
                            //     top: 4,
                            //   ),
                            //   padding: getPadding(
                            //     left: 12,
                            //     top: 18,
                            //     right: 12,
                            //     bottom: 18,
                            //   ),
                            //   decoration: AppDecoration.fillWhiteA700,
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         "lbl_clear_cache".tr,
                            //         overflow: TextOverflow.ellipsis,
                            //         textAlign: TextAlign.start,
                            //         style: AppStyle
                            //             .txtGeneralSansMedium14Bluegray900
                            //             .copyWith(
                            //           height: getVerticalSize(
                            //             1.06,
                            //           ),
                            //         ),
                            //       ),
                            //       Padding(
                            //         padding: getPadding(
                            //           top: 1,
                            //         ),
                            //         child: Text(
                            //           "lbl_24_mb".tr,
                            //           overflow: TextOverflow.ellipsis,
                            //           textAlign: TextAlign.start,
                            //           style: AppStyle
                            //               .txtGeneralSansMedium12Bluegray200
                            //               .copyWith(
                            //             letterSpacing: getHorizontalSize(
                            //               0.50,
                            //             ),
                            //             height: getVerticalSize(
                            //               1.48,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
                        ),
                        child: Text(
                          "lbl_general_info".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium14Bluegray200
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              1.00,
                            ),
                            height: getVerticalSize(
                              0.85,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: getMargin(
                          top: 14,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // InkWell(
                            //   onTap: () =>
                            //       Get.toNamed(AppRoutes.helpCenterScreen),
                            //   child: Container(
                            //     padding: getPadding(
                            //       left: 12,
                            //       top: 16,
                            //       right: 12,
                            //       bottom: 16,
                            //     ),
                            //     child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         Padding(
                            //           padding: getPadding(
                            //             top: 3,
                            //             bottom: 1,
                            //           ),
                            //           child: Text(
                            //             "lbl_help_center".tr,
                            //             overflow: TextOverflow.ellipsis,
                            //             textAlign: TextAlign.start,
                            //             style: AppStyle
                            //                 .txtGeneralSansMedium14Bluegray900
                            //                 .copyWith(
                            //               height: getVerticalSize(
                            //                 1.06,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         CustomImageView(
                            //           svgPath: ImageConstant.imgArrowright,
                            //           rotateifRtl: true,
                            //           height: getSize(
                            //             24.00,
                            //           ),
                            //           width: getSize(
                            //             24.00,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            InkWell(
                              onTap: () => Get.toNamed(
                                  AppRoutes.termsAndConditionsScreen),
                              child: Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.outlineGray200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "msg_terms_conditions".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () =>
                                  Get.toNamed(AppRoutes.privacyPolicyScreen),
                              child: Container(
                                margin: getMargin(
                                  top: 4,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 16,
                                  right: 12,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "Contact Us",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtGeneralSansMedium14Bluegray900
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.06,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.bottomSheet(
                            LogoutBottomsheet(Get.put(LogoutController()))),
                        child: Container(
                          width: size.width,
                          margin: getMargin(
                            top: 14,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Container(
                            padding: getPadding(
                              left: 12,
                              top: 16,
                              right: 12,
                              bottom: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_logout".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle
                                        .txtGeneralSansMedium14Bluegray900
                                        .copyWith(
                                      color: ColorConstant.red900,
                                      height: getVerticalSize(
                                        1.06,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgTrash,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

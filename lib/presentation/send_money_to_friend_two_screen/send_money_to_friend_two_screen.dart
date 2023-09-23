import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';


import 'controller/send_money_to_friend_two_controller.dart';

import 'package:fintap/core/app_export.dart';

import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

import 'models/search_fintapers_model.dart';
import 'widgets/fintaper_widget.dart';

class SendMoneyToFriendTwoScreen
    extends GetWidget<SendMoneyToFriendTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 48,
                backgroundColor: ColorConstant.whiteA700,
                leading: BkBtn(
                  margin: getMargin(left: 24, top: 12, bottom: 24),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_send_to_moni_friends".tr),
                actions: [
                  // AppbarImage(
                  //     height: getSize(24.00),
                  //     width: getSize(24.00),
                  //     svgPath: ImageConstant.imgMicrophone,
                  //     onTap: () => Get.bottomSheet(
                  //         SendMoneyToFriendAddScreen(
                  //             Get.put(SendMoneyToFriendAddController())),
                  //         isScrollControlled: true),
                  //     margin:
                  //         getMargin(left: 24, top: 12, right: 24, bottom: 24))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 16, right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  width: size.width,
                                  onChanged: (value) {
                                    controller.onSearchChanged(
                                        controller.searchController.text);
                                  },
                                  focusNode: FocusNode(),
                                  controller: controller.searchController,
                                  hintText: "msg_search_name_email".tr,
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15.00)),
                                      child: IconButton(
                                          onPressed: () {
                                            // ignore: unnecessary_statements
                                            controller.searchController.clear;
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(52.00))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  // child: Text("lbl_favorite".tr,
                                  child: Text("FinTapers".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtGeneralSansMedium14Bluegray200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(1.00),
                                              height: getVerticalSize(0.85)))),
                              // Container(
                              //     margin: getMargin(top: 14),
                              //     decoration: AppDecoration.fillWhiteA700
                              //         .copyWith(
                              //             borderRadius: BorderRadiusStyle
                              //                 .roundedBorder12),
                              //     child: Obx(() => ListView.separated(
                              //         physics: NeverScrollableScrollPhysics(),
                              //         shrinkWrap: true,
                              //         separatorBuilder: (context, index) {
                              //           return SizedBox(
                              //               height: getVerticalSize(4.00));
                              //         },
                              //         itemCount: controller
                              //             .sendMoneyToFriendTwoModelObj
                              //             .value
                              //             .content6ItemList
                              //             .length,
                              //         itemBuilder: (context, index) {
                              //           Content6ItemModel model = controller
                              //               .sendMoneyToFriendTwoModelObj
                              //               .value
                              //               .content6ItemList[index];
                              //           return Content6ItemWidget(model);
                              //         }))),
                              // Padding(
                              //     padding: getPadding(top: 14),
                              //     child: Text("lbl_a".tr,
                              //         overflow: TextOverflow.ellipsis,
                              //         textAlign: TextAlign.start,
                              //         style: AppStyle
                              //             .txtGeneralSansMedium14Bluegray200
                              //             .copyWith(
                              //                 letterSpacing:
                              //                     getHorizontalSize(1.00),
                              //                 height: getVerticalSize(0.85)))),
                              // Container(
                              //     margin: getMargin(top: 14),
                              //     decoration: AppDecoration.fillWhiteA700
                              //         .copyWith(
                              //             borderRadius: BorderRadiusStyle
                              //                 .roundedBorder12),
                              //     child: Obx(() => ListView.separated(
                              //         physics: NeverScrollableScrollPhysics(),
                              //         shrinkWrap: true,
                              //         separatorBuilder: (context, index) {
                              //           return SizedBox(
                              //               height: getVerticalSize(4.00));
                              //         },
                              //         itemCount: controller
                              //             .sendMoneyToFriendTwoModelObj
                              //             .value
                              //             .content7ItemList
                              //             .length,
                              //         itemBuilder: (context, index) {
                              //           Content6ItemModel model = controller
                              //               .sendMoneyToFriendTwoModelObj
                              //               .value
                              //               .content7ItemList[index];
                              //           return Content7ItemWidget(model);
                              //         }))),
                              // Padding(
                              //     padding: getPadding(top: 14),
                              //     child: Text("lbl_b".tr,
                              //         overflow: TextOverflow.ellipsis,
                              //         textAlign: TextAlign.start,
                              //         style: AppStyle
                              //             .txtGeneralSansMedium14Bluegray200
                              //             .copyWith(
                              //                 letterSpacing:
                              //                     getHorizontalSize(1.00),
                              //                 height: getVerticalSize(0.85)))),
                              Container(
                                  margin: getMargin(top: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Obx(() => controller.isLoading.value
                                      ? Container(
                                          height: size.height * 0.5,
                                          alignment: Alignment.center,
                                          child: CupertinoActivityIndicator(
                                            animating: true,
                                            color: ColorConstant.lightGreen400,
                                            radius: 20,
                                          ))
                                      : ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(4.00));
                                          },
                                          itemCount: controller
                                                      .searchFintapersModel
                                                      .value
                                                      .data ==
                                                  null
                                              ? 0
                                              : controller.searchFintapersModel
                                                  .value.data!.length,
                                          itemBuilder: (context, index) {
                                            SearchData data = controller
                                                .searchFintapersModel
                                                .value
                                                .data![index];
                                            return Fintaper(
                                              searchData: data,
                                            );
                                          })))
                            ]))))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}

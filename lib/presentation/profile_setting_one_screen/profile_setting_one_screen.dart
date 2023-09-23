
import 'package:fintap/widgets/bk_btn.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/utils/file_upload_helper.dart';
import '../../core/utils/permission_manager.dart';

import '../account_one_page/models/profile_model.dart';


import 'controller/profile_setting_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileSettingOneScreen extends GetWidget<ProfileSettingOneController> {
  @override
  Widget build(BuildContext context) {
    Profile profileData = Get.arguments;

    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                backgroundColor: ColorConstant.whiteA700,
                height: getVerticalSize(60.00),
                leadingWidth: 48,
                leading: BkBtn(
                  margin: getMargin(left: 24, top: 12, bottom: 24),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_profile_setting".tr),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                margin: getMargin(left: 24, top: 20, right: 24),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        // onTap: () => onTapChangeProfilePic(),
                        child: Container(
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("Change Profile Picture",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  CustomImageView(
                                      imagePath: ImageConstant.appLogo,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12.00)))
                                ])),
                      ),
                      InkWell(
                        // onTap: () => Get.bottomSheet(
                        //     ProfileSettingFourScreen(
                        //         Get.put(ProfileSettingFourController())),
                        //     isScrollControlled: true),
                        child: Container(
                            margin: getMargin(top: 4),
                            padding: getPadding(
                                left: 12, top: 16, right: 12, bottom: 16),
                            decoration: AppDecoration.outlineGray200,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 2),
                                      child: Text("lbl_real_name".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansMedium14Bluegray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 2),
                                      child: Text(
                                          "${profileData.firstname} ${profileData.lastname}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtGeneralSansRegular14IndigoA400
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.27)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      rotateifRtl: true,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(left: 11))
                                ])),
                      ),
                      // InkWell(
                      //   onTap: () => Get.bottomSheet(
                      //       ProfileSettingTwoScreen(
                      //           Get.put(ProfileSettingTwoController())),
                      //       isScrollControlled: true),
                      //   child: Container(
                      //       margin: getMargin(top: 4),
                      //       padding: getPadding(
                      //           left: 12, top: 16, right: 12, bottom: 16),
                      //       decoration: AppDecoration.outlineGray200,
                      //       child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Padding(
                      //                 padding: getPadding(top: 2, bottom: 2),
                      //                 child: Text("lbl_date_of_birth".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.start,
                      //                     style: AppStyle
                      //                         .txtGeneralSansMedium14Bluegray900
                      //                         .copyWith(
                      //                             height:
                      //                                 getVerticalSize(1.06)))),
                      //             Spacer(),
                      //             Padding(
                      //                 padding: getPadding(top: 3, bottom: 1),
                      //                 child: Text("lbl_dec_31_2000".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.start,
                      //                     style: AppStyle
                      //                         .txtGeneralSansRegular14IndigoA400
                      //                         .copyWith(
                      //                             height:
                      //                                 getVerticalSize(1.27)))),
                      //             CustomImageView(
                      //                 svgPath: ImageConstant.imgArrowright,
                      //                 rotateifRtl: true,
                      //                 height: getSize(24.00),
                      //                 width: getSize(24.00),
                      //                 margin: getMargin(left: 8))
                      //           ])),
                      // ),
                      // InkWell(
                      //   onTap: () => Get.bottomSheet(ProfileSettingBottomsheet(
                      //       Get.put(ProfileSettingController()))),
                      //   child: Container(
                      //       margin: getMargin(top: 4),
                      //       padding: getPadding(
                      //           left: 12, top: 16, right: 12, bottom: 16),
                      //       decoration: AppDecoration.fillWhiteA700,
                      //       child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Padding(
                      //                 padding: getPadding(top: 2, bottom: 2),
                      //                 child: Text("lbl_gender".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.start,
                      //                     style: AppStyle
                      //                         .txtGeneralSansMedium14Bluegray900
                      //                         .copyWith(
                      //                             height:
                      //                                 getVerticalSize(1.06)))),
                      //             Spacer(),
                      //             Padding(
                      //                 padding: getPadding(top: 2, bottom: 2),
                      //                 child: Text("lbl_male".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.start,
                      //                     style: AppStyle
                      //                         .txtGeneralSansRegular14IndigoA400
                      //                         .copyWith(
                      //                             height:
                      //                                 getVerticalSize(1.27)))),
                      //             CustomImageView(
                      //                 svgPath: ImageConstant.imgArrowright,
                      //                 rotateifRtl: true,
                      //                 height: getSize(24.00),
                      //                 width: getSize(24.00),
                      //                 margin: getMargin(left: 8))
                      //           ])),
                      // )
                    ]))));
  }

  onTapChangeProfilePic() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    // List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      value = value;
    });
  }

  onTapArrowleft31() {
    Get.back();
  }
}

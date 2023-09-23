import 'package:fintap/widgets/bk_btn.dart';

import '../linked_account_screen/widgets/content20_item_widget.dart';
import 'controller/linked_account_controller.dart';
import 'models/content20_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LinkedAccountScreen extends GetWidget<LinkedAccountController> {
  @override
  Widget build(BuildContext context) {
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
              title: AppbarSubtitle(text: "lbl_linked_account".tr),
            ),
            body: Container(
                margin: getMargin(left: 24, top: 24, right: 24),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(4.00));
                    },
                    itemCount: controller
                        .linkedAccountModelObj.value.content20ItemList.length,
                    itemBuilder: (context, index) {
                      Content20ItemModel model = controller
                          .linkedAccountModelObj.value.content20ItemList[index];
                      return Content20ItemWidget(model);
                    })))));
  }

  onTapArrowleft41() {
    Get.back();
  }
}

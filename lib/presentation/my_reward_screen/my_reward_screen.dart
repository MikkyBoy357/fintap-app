import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/spacing.dart';

import '../coin_reward_screen/models/content2_item_model.dart';
import '../my_reward_screen/widgets/content4_item_widget.dart';
import 'controller/my_reward_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyRewardScreen extends GetWidget<MyRewardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
              height: getVerticalSize(60.00),
              leadingWidth: 48,
              backgroundColor: ColorConstant.whiteA700,
              leading: BkBtn(
                margin: getMargin(left: 24, top: 12, bottom: 24),
              ),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_my_rewards".tr),
            ),
            body: Container(
                margin: getMargin(left: 24, top: 24, right: 24),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return CustomDivider();
                    },
                    itemCount: controller
                        .myRewardModelObj.value.content4ItemList.length,
                    itemBuilder: (context, index) {
                      Content2ItemModel model = controller
                          .myRewardModelObj.value.content4ItemList[index];
                      return Content4ItemWidget(model);
                    })))));
  }
}

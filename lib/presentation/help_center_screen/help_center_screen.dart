import 'package:fintap/widgets/bk_btn.dart';
import 'package:fintap/widgets/spacing.dart';

import '../help_center_screen/widgets/content21_item_widget.dart';
import 'controller/help_center_controller.dart';
import 'models/content21_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends GetWidget<HelpCenterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                backgroundColor: ColorConstant.whiteA700,
                height: getVerticalSize(60.00),
                leadingWidth: 48,
                leading: BkBtn(
                  margin: getMargin(left: 24, top: 12, bottom: 24),
                ),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_help_center".tr),
                styleType: Style.bgFillWhiteA700),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              CustomSearchView(
                  width: size.width,
                  margin: getPadding(
                    left: 24,
                    right: 24,
                    top: 16,
                  ),
                  focusNode: FocusNode(),
                  controller: controller.textInputController,
                  hintText: "lbl_search".tr,
                  suffix: Padding(
                      padding: EdgeInsets.only(right: getHorizontalSize(15.00)),
                      child: IconButton(
                          onPressed: () {
                            // ignore: unnecessary_statements
                            controller.textInputController.clear;
                          },
                          icon:
                              Icon(Icons.clear, color: Colors.grey.shade600))),
                  suffixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(52.00))),
              VerticalSpace(height: 24),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Container(
                        margin: getPadding(
                          bottom: 20,
                          left: 24,
                          right: 24,
                        ),
                        decoration: AppDecoration.fillWhiteA700
                            .copyWith(borderRadius: BorderRadius.circular(14)),
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: controller.helpCenterModelObj.value
                                .content21ItemList.length,
                            separatorBuilder: (context, index) =>
                                CustomDivider(),
                            itemBuilder: (context, index) {
                              Content21ItemModel model = controller
                                  .helpCenterModelObj
                                  .value
                                  .content21ItemList[index];
                              return Content21ItemWidget(model, index: index);
                            })),
                  ),
                ),
              )
            ])));
  }

  onTapArrowleft42() {
    Get.back();
  }
}

import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';

import '../pay_bill_screen/widgets/content12_item_widget.dart';
import 'controller/pay_bill_controller.dart';
import 'models/content13_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PayBillScreen extends GetWidget<PayBillController> {
  final PayBillController controller = Get.put(PayBillController());
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
              title: AppbarSubtitle(text: "lbl_pay_bill".tr),
            ),
            body: Container(
                width: size.width,
                padding: getPadding(all: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 20, top: 22, right: 20, bottom: 22),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Obx(() {
                            if (controller.isLoading.value) {
                              // Show loading indicator
                              return Center(
                                  child: CupertinoActivityIndicator(
                                animating: true,
                              ));
                            } else {
                              // Show content

                              return GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          mainAxisExtent: 85,
                                          crossAxisSpacing: 12,
                                          mainAxisSpacing: 12),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.payBillModelObj.value
                                      .content12ItemList.length,
                                  itemBuilder: (context, index) {
                                    Content13ItemModel model = controller
                                        .payBillModelObj
                                        .value
                                        .content12ItemList[index];
                                    return Content12ItemWidget(
                                        model);
                                  });
                            }
                          })),
                      // Padding(
                      //     padding: getPadding(top: 25),
                      //     child: Text("msg_last_transaction".tr,
                      //         overflow: TextOverflow.ellipsis,
                      //         textAlign: TextAlign.start,
                      //         style: AppStyle
                      //             .txtGeneralSansSemibold16Bluegray900
                      //             .copyWith(
                      //                 letterSpacing: getHorizontalSize(0.50),
                      //                 height: getVerticalSize(1.11)))),
                      // Container(
                      //     margin: getMargin(top: 12),
                      //     decoration: AppDecoration.fillWhiteA700.copyWith(
                      //         borderRadius: BorderRadiusStyle.roundedBorder12),
                      //     child: Obx(() => ListView.separated(
                      //         physics: BouncingScrollPhysics(),
                      //         shrinkWrap: true,
                      //         separatorBuilder: (context, index) {
                      //           return SizedBox(height: getVerticalSize(4.00));
                      //         },
                      //         itemCount: controller.payBillModelObj.value
                      //             .content13ItemList.length,
                      //         itemBuilder: (context, index) {
                      //           Content13ItemModel model = controller
                      //               .payBillModelObj
                      //               .value
                      //               .content13ItemList[index];
                      //           return Content13ItemWidget(model);
                      //         })))
                    ]))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}

import 'package:fintap/widgets/bk_btn.dart';

import '../../widgets/custom_text_form_field.dart';
import '../top_up_screen/widgets/listprice_one_item_widget.dart';
import 'controller/top_up_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class TopUpScreen extends GetWidget<TopUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: BkBtn(
                  color: ColorConstant.whiteA700,
                  margin: getMargin(left: 24, top: 12, bottom: 14),
                ),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_top_up".tr)),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_enter_amount".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtGeneralSansRegular14WhiteA700
                                  .copyWith(height: getVerticalSize(1.27)))),
                      Obx(
                        () => CustomTextFormField(
                          width: size.width / 3,
                          prefix: Text(
                            '\$',
                            style: TextStyle(
                                fontSize: 48,
                                color: ColorConstant.whiteA700.withOpacity(.5),
                                fontWeight: FontWeight.w500),
                          ),
                          variant: TextFormFieldVariant.None,
                          controller: controller.amountController.value,
                          fontStyle:
                              TextFormFieldFontStyle.GeneralSansRegular30,
                          hintText: '150',
                        ),
                      ),
                      Padding(
                          padding: getPadding(left: 24, top: 44, right: 24),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisExtent: 36,
                                      crossAxisSpacing: 12,
                                      mainAxisSpacing: 12),
                              itemCount: controller.topUpModelObj.value
                                  .listpriceOneItemList.length,
                              itemBuilder: (context, index) {
                                String model = controller.topUpModelObj.value
                                    .listpriceOneItemList[index];
                                return ListpriceOneItemWidget(model);
                              }))),
                      Spacer(),
                      CustomButton(
                        height: 56,
                        width: size.width,
                        text: "lbl_to_up_now".tr,
                        margin:
                            getMargin(top: 23, bottom: 20, left: 24, right: 24),
                        onTap: () => Get.toNamed(AppRoutes.selectMethodScreen),
                      )
                    ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}

import '../../widgets/custom_text_form_field.dart';
import '../send_money_to_friend_one_screen/controller/send_money_to_friend_one_controller.dart';
import 'controller/send_money_to_friend_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class SendMoneyToFriendScreen extends GetWidget<SendMoneyToFriendController> {
  SendMoneyToFriendOneController requestMonyScreenController =
      Get.find<SendMoneyToFriendOneController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 24, top: 12, bottom: 14),
                    onTap: onTapArrowleft20),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_request_money".tr)),
            body: Container(
                width: size.width,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 67),
                      child: Text("lbl_set_amount".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansRegular14WhiteA700
                              .copyWith(height: getVerticalSize(1.27)))),
                  CustomTextFormField(
                    width: size.width / 3,
                    prefix: Text(
                      '\$',
                      style: TextStyle(
                          fontSize: 48,
                          color: ColorConstant.whiteA700.withOpacity(.5),
                          fontWeight: FontWeight.w500),
                    ),
                    controller: controller.textEditingController,
                    variant: TextFormFieldVariant.None,
                    fontStyle: TextFormFieldFontStyle.GeneralSansRegular30,
                    hintText: '12.5',
                  ),
                  Spacer(),
                  CustomButton(
                      height: 56,
                      width: size.width,
                      text: "lbl_set_amount".tr,
                      onTap: () {
                        requestMonyScreenController.amount.value =
                            controller.textEditingController.text;

                        Get.back();
                      },
                      margin:
                          getMargin(top: 23, left: 24, right: 24, bottom: 20))
                ]))));
  }

  onTapArrowleft20() {
    Get.back();
  }
}

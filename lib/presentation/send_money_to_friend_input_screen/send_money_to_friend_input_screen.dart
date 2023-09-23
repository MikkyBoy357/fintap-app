// ignore_for_file: must_be_immutable

import 'package:fintap/widgets/bk_btn.dart';
import 'package:flutter/cupertino.dart';

import '../../core/utils/capitalize_all_word.dart';
import '../../core/utils/money_formater.dart';
import '../../widgets/custom_text_form_field.dart';
import '../send_money_to_friend_two_screen/models/search_fintapers_model.dart';
import 'controller/send_money_to_friend_input_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_title.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SendMoneyToFriendInputScreen
    extends GetWidget<SendMoneyToFriendInputController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SearchData searchData = Get.arguments["search_data"];
    String mainBalance = Get.arguments["main_balance"];
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: BkBtn(
                  color: ColorConstant.whiteA700,
                  margin: getMargin(left: 24, top: 12, bottom: 12),
                ),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_send_to_friend".tr)),
            body: Container(
                width: size.width,
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: getMargin(left: 24, top: 19, right: 24),
                            padding: getPadding(all: 12),
                            decoration: AppDecoration.fillIndigoA100.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                            child: Row(children: [
                              CustomImageView(
                                imagePath: ImageConstant.appLogo,
                                height: getSize(48.00),
                                width: getSize(48.00),
                                // radius: BorderRadius.circular(
                                //     getHorizontalSize(2.00))
                              ),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 3, right: 121),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Recipient",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansRegular14Blue50
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.27))),
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Text(
                                                capitalizeAllWord(
                                                    "${searchData.firstname} ${searchData.lastname}"),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtGeneralSansMedium16Gray100
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.11))))
                                      ]))
                            ])),
                        Padding(
                            padding: getPadding(top: 26),
                            child: Text("lbl_enter_amount".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtGeneralSansRegular14WhiteA700
                                    .copyWith(height: getVerticalSize(1.27)))),
                        CustomTextFormField(
                          width: size.width / 3,
                          prefix: Text(
                            'N',
                            style: TextStyle(
                                fontSize: 48,
                                color: ColorConstant.whiteA700.withOpacity(.5),
                                fontWeight: FontWeight.w500),
                          ),
                          variant: TextFormFieldVariant.None,
                          fontStyle:
                              TextFormFieldFontStyle.GeneralSansRegular30,
                          hintText: '0.00',
                          textInputType: TextInputType.number,
                          controller: controller.amountController,
                          validator: (value) {
                            if (value == null) {
                              return "Please enter an amount";
                            }
                            return null;
                          },
                        ),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Text(
                                "Balance: ${moneyFormat().format(double.parse("$mainBalance"))} ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtGeneralSansMedium16Blue100
                                    .copyWith(height: getVerticalSize(1.11)))),
                        Spacer(),
                        Obx(() => controller.isLoading.value
                            ? Container(
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
                            : CustomButton(
                                height: 56,
                                width: size.width,
                                text: "Send to ${searchData.firstname}",
                                margin: getMargin(
                                    top: 23, bottom: 20, left: 24, right: 24),
                                // onTap: () => Get.toNamed(
                                //     AppRoutes.sendMoneyToFriendSuccessScreen),
                                onTap: () {
                                  print(searchData.id);
                                  if (controller
                                      .amountController.text.isEmpty) {
                                    Get.snackbar(
                                      "Error".tr,
                                      "Amount is required".tr,
                                      backgroundColor: Colors.red,
                                      colorText: Colors.white,
                                      snackPosition: SnackPosition.TOP,
                                    );
                                    return;
                                  }
                                  controller.walletTransfer(searchData.id!);
                                },
                              )),
                      ]),
                ))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}

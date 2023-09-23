import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../core/utils/capitalize_all_word.dart';
import 'controller/top_up_with_bank_transfer_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';

import 'package:flutter/material.dart';

//ignore: must_be_immutable
class TopUpWithBankTransferScreen extends StatefulWidget {
  TopUpWithBankTransferController controller;
  TopUpWithBankTransferScreen(this.controller);

  @override
  State<TopUpWithBankTransferScreen> createState() =>
      _TopUpWithBankTransferScreenState();
}

class _TopUpWithBankTransferScreenState
    extends State<TopUpWithBankTransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .95,
      decoration: AppDecoration.fillGray200,
      child: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: size.width,
                  padding: getPadding(all: 24),
                  decoration: AppDecoration.fillGray200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_bank_transfer2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(0.99))),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseGray900,
                            onTap: () => Get.back(),
                            height: getSize(24.00),
                            width: getSize(24.00),
                            margin: getMargin(
                              left: 76,
                            ))
                      ]))),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(() => widget.controller.isLoading.value
                      ? Center(
                          child: CupertinoActivityIndicator(
                          animating: true,
                        ))
                      : Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: getMargin(left: 24, right: 24),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // CustomIconButton(
                                    //     height: 40,
                                    //     width: 40,
                                    //     margin: getMargin(top: 1),
                                    //     child: CustomImageView(
                                    //       imagePath: ImageConstant.appLogo,
                                    //     )),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Text(
                                            "Your virtual bank account details",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray200
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.06)))),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Text(
                                            "${widget.controller.virtualBankModel.value.data!.accountNumber}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray900
                                                .copyWith(
                                                    fontSize: 20,
                                                    height: getVerticalSize(
                                                        1.06)))),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Text("Account Name",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray200
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.06)))),
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Text(
                                            capitalizeAllWord(
                                                "${widget.controller.virtualBankModel.value.data!.accountName}"),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium16Bluegray900
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.11)))),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Text("Bank Name",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray200
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.06)))),
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Text(
                                            capitalizeAllWord(
                                                "${widget.controller.virtualBankModel.value.data!.bankName}"),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtGeneralSansMedium16Bluegray900
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.11)))),
                                    CustomButton(
                                        onTap: () =>
                                            Clipboard.setData(new ClipboardData(
                                                    text:
                                                        '${widget.controller.virtualBankModel.value.data!.accountNumber}'))
                                                .then((_) {
                                              Get.snackbar(
                                                "Copied to your clipboard !",
                                                "",
                                                snackPosition:
                                                    SnackPosition.TOP,
                                                backgroundColor: Colors.green,
                                                colorText: Colors.white,
                                              );
                                              // ScaffoldMessenger.of(context)
                                              //     .showSnackBar(SnackBar(
                                              //         content: Text(
                                              //             'Copied to your clipboard !')));
                                            }),
                                        height: 44,
                                        width: 295,
                                        text: "lbl_copy_code".tr,
                                        margin: getMargin(top: 16),
                                        variant:
                                            ButtonVariant.OutlineIndigoA400,
                                        shape: ButtonShape.RoundedBorder9,
                                        padding: ButtonPadding.PaddingAll11,
                                        fontStyle: ButtonFontStyle
                                            .GeneralSansMedium14IndigoA400),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(295.00),
                                        margin: getMargin(top: 16),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200)),
                                    Container(
                                      width: getHorizontalSize(270.00),
                                      margin: getMargin(top: 16),
                                      // padding: getPadding(
                                      //   left: 10,
                                      //   right: 10,
                                      // ),
                                      child: Text(
                                          "Bank transfers to the above stated bank account credits your FinTap Wallet instantly, this account is dedicated to your FinTap account and might never change.",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGeneralSansRegular12Bluegray500
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.11))),
                                    )
                                  ])))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 24, top: 25),
                          child: Text("Wallet Functions",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle
                                  .txtGeneralSansSemibold16Bluegray900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.50),
                                      height: getVerticalSize(1.11))))),
                  Container(
                      margin:
                          getMargin(left: 24, top: 12, right: 24, bottom: 24),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(327.00),
                                padding: getPadding(all: 16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Theme(
                                        data: Theme.of(context).copyWith(
                                            dividerColor: Colors.transparent),
                                        child: ExpansionTile(
                                          title: Text(
                                            "Credit Wallet",
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray900,
                                          ),
                                          initiallyExpanded: true,
                                          iconColor: Colors.black,
                                          collapsedIconColor: Colors.black,
                                          childrenPadding: getPadding(
                                              left: 16, right: 16, bottom: 10),
                                          children: [
                                            Text(
                                                'Make transfers to the above bank to fund your FinTap wallet instantly, this includes withdrawals from your investment proceeds.',
                                                style: AppStyle
                                                    .txtGeneralSansRegular14
                                                    .copyWith(
                                                  height: getVerticalSize(1.16),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ])),
                            CustomDivider(),
                            Container(
                                margin: getMargin(top: 4),
                                padding: getPadding(all: 16),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Theme(
                                        data: Theme.of(context).copyWith(
                                            dividerColor: Colors.transparent),
                                        child: ExpansionTile(
                                          title: Text(
                                            "Debit Wallet",
                                            style: AppStyle
                                                .txtGeneralSansMedium14Bluegray900,
                                          ),
                                          initiallyExpanded: false,
                                          iconColor: Colors.black,
                                          collapsedIconColor: Colors.black,
                                          childrenPadding: getPadding(
                                              left: 16, right: 16, bottom: 10),
                                          children: [
                                            Text(
                                                "Pay for all FinTap transactions from your wallet balance, this also includes withdrawals to your local Nigerian bank account."
                                                    .tr,
                                                style: AppStyle
                                                    .txtGeneralSansRegular14
                                                    .copyWith(
                                                  height: getVerticalSize(1.16),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ]))
                          ])),
                  // CustomButton(
                  //     height: 56,
                  //     width: size.width,
                  //     text: "msg_i_have_transferred".tr,
                  //     margin:
                  //         getMargin(top: 26, bottom: 20, left: 24, right: 24)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

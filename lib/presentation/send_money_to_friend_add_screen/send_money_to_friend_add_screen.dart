import 'dart:developer';

import 'package:fintap/widgets/spacing.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'controller/send_money_to_friend_add_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/core/utils/validation_functions.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:fintap/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SendMoneyToFriendAddScreen extends StatefulWidget {
  SendMoneyToFriendAddController getController;

  SendMoneyToFriendAddScreen(this.getController);
  Barcode? result;

  QRViewController? controller;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  State<SendMoneyToFriendAddScreen> createState() =>
      _SendMoneyToFriendAddScreenState();
}

class _SendMoneyToFriendAddScreenState extends State<SendMoneyToFriendAddScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .98,
        width: size.width,
        margin: getMargin(top: 4),
        padding: getPadding(
          left: 24,
          top: 23,
          right: 24,
        ),
        decoration: AppDecoration.fillGray100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                HorizontalSpace(width: 24),
                Text("lbl_add_friend".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold18.copyWith(
                        letterSpacing: getHorizontalSize(0.50),
                        height: getVerticalSize(0.99))),
                CustomImageView(
                  svgPath: ImageConstant.imgCloseGray900,
                  height: getSize(24.00),
                  width: getSize(24.00),
                  onTap: () => Get.back(),
                )
              ]),
              Container(
                margin: getMargin(top: 31),
                padding: getPadding(all: 4),
                decoration: AppDecoration.fillGray200
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: TabBar(
                  controller: tabController,
                  unselectedLabelStyle:
                      AppStyle.txtGeneralSansMedium16Bluegray200,
                  labelStyle: AppStyle.txtGeneralSansMedium16Bluegray200,
                  labelColor: ColorConstant.blueGray900,
                  unselectedLabelColor: ColorConstant.blueGray200,
                  indicator: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  tabs: [
                    Tab(
                      text: "lbl_by_email".tr,
                    ),
                    Tab(
                      text: "lbl_by_phone".tr,
                    ),
                    Tab(
                      text: "lbl_scan".tr,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(controller: tabController, children: [
                CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    controller: widget.getController.inputController,
                    hintText: "msg_enter_moni_email".tr,
                    margin: getMargin(top: 16),
                    padding: TextFormFieldPadding.PaddingT15_1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 14, right: 8, bottom: 14),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgMailBlueGray500)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(52.00)),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    }),
                CustomTextFormField(
                    width: size.width,
                    focusNode: FocusNode(),
                    controller: widget.getController.inputController,
                    hintText: "msg_enter_phone_number".tr,
                    margin: getMargin(top: 16),
                    padding: TextFormFieldPadding.PaddingT15_1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 14, right: 8, bottom: 14),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgMobileGray900,
                        )),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(52.00)),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    }),
                QRView(
                  key: widget.qrKey,
                  onQRViewCreated: (val) {},
                  overlay: QrScannerOverlayShape(
                      borderColor: ColorConstant.indigo500,
                      borderRadius: 10,
                      borderLength: 30,
                      borderWidth: 10,
                      cutOutSize: 372),
                  onPermissionSet: (ctrl, p) =>
                      _onPermissionSet(context, ctrl, p),
                )
              ])),
              CustomButton(
                  height: 56,
                  width: size.width,
                  text: "lbl_add_friend".tr,
                  onTap: () => Get.back(),
                  margin: getMargin(top: 20, bottom: 20))
            ]));
  }

  onTapArrowleft12() {
    Get.back();
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}

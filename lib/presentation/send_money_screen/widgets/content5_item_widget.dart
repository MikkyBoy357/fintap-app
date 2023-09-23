import '../controller/send_money_controller.dart';
import '../models/content5_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content5ItemWidget extends StatelessWidget {
  Content5ItemWidget(this.content5ItemModelObj);

  Content5ItemModel content5ItemModelObj;

  var controller = Get.find<SendMoneyController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 13,
          right: 16,
          bottom: 13,
        ),
        decoration: AppDecoration.outlineGray200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 40,
              width: 40,
              margin: getMargin(
                top: 2,
                bottom: 2,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage59,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_citi_bank".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                      height: getVerticalSize(
                        1.06,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "msg_account_ending_in".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansRegular12Bluegray200.copyWith(
                        height: getVerticalSize(
                          0.99,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgStar,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              margin: getMargin(
                top: 10,
                bottom: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

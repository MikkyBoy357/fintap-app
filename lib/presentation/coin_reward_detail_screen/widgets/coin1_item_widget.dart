import '../controller/coin_reward_detail_controller.dart';
import '../models/coin1_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Coin1ItemWidget extends StatelessWidget {
  Coin1ItemWidget(this.coin1ItemModelObj);

  Coin1ItemModel coin1ItemModelObj;

  var controller = Get.find<CoinRewardDetailController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                42.00,
              ),
              padding: getPadding(
                left: 12,
                top: 8,
                right: 12,
                bottom: 8,
              ),
              decoration: AppDecoration.fillBlue50.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_52".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold14.copyWith(
                      height: getVerticalSize(
                        1.06,
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgSearchIndigoA10001,
                    height: getSize(
                      16.00,
                    ),
                    width: getSize(
                      16.00,
                    ),
                    margin: getMargin(
                      top: 4,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                "lbl_today2".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansSemibold12.copyWith(
                  height: getVerticalSize(
                    0.99,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

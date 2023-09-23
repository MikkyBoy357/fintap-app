import '../controller/coin_reward_controller.dart';
import '../models/coin_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoinItemWidget extends StatelessWidget {
  CoinItemWidget(this.coinItemModelObj, {required this.index});

  CoinItemModel coinItemModelObj;
  int index;
  var controller = Get.find<CoinRewardController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            50.00,
          ),
          height: getVerticalSize(60),
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          decoration: index == 0
              ? AppDecoration.fillBlue50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                )
              : AppDecoration.outlineGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                coinItemModelObj.numOfCoins,
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
            coinItemModelObj.date,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: index == 0
                ? AppStyle.txtGeneralSansSemibold12.copyWith(
                    height: getVerticalSize(
                      0.99,
                    ),
                  )
                : AppStyle.txtGeneralSansSemibold12.copyWith(
                    height: getVerticalSize(
                      0.99,
                    ),
                    color: ColorConstant.blueGray200),
          ),
        ),
      ],
    );
  }
}

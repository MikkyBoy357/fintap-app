import '../controller/pin_one_controller.dart';
import '../models/pin_one_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PinOneItemWidget extends StatelessWidget {
  PinOneItemWidget(this.pinOneItemModelObj);

  PinOneItemModel pinOneItemModelObj;

  var controller = Get.find<PinOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_1".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: AppStyle.txtGeneralSansMedium32.copyWith(
            letterSpacing: getHorizontalSize(
              0.64,
            ),
            height: getVerticalSize(
              1.04,
            ),
          ),
        ),
        Text(
          "lbl_2".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: AppStyle.txtGeneralSansMedium32.copyWith(
            letterSpacing: getHorizontalSize(
              0.64,
            ),
            height: getVerticalSize(
              1.04,
            ),
          ),
        ),
        Text(
          "lbl_3".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: AppStyle.txtGeneralSansMedium32.copyWith(
            letterSpacing: getHorizontalSize(
              0.64,
            ),
            height: getVerticalSize(
              1.04,
            ),
          ),
        ),
      ],
    );
  }
}

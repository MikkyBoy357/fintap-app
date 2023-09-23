import '../controller/send_money_to_friend_input_controller.dart';
import '../models/listone1_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listone1ItemWidget extends StatelessWidget {
  Listone1ItemWidget(this.listone1ItemModelObj);

  Listone1ItemModel listone1ItemModelObj;

  var controller = Get.find<SendMoneyToFriendInputController>();

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

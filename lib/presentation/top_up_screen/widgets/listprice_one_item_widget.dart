import '../controller/top_up_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListpriceOneItemWidget extends StatelessWidget {
  ListpriceOneItemWidget(this.listpriceOneItemModelObj);

  String listpriceOneItemModelObj;

  var controller = Get.find<TopUpController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          controller.amountController.value.text = listpriceOneItemModelObj,
      child: Container(
        alignment: Alignment.center,
        width: getHorizontalSize(
          101.00,
        ),
        padding: getPadding(
          top: 6,
          bottom: 6,
        ),
        decoration: AppDecoration.txtOutlineIndigoA100.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder18,
        ),
        child: Text(
          '\$' + listpriceOneItemModelObj,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: AppStyle.txtGeneralSansMedium16Blue50.copyWith(
            letterSpacing: getHorizontalSize(
              1.00,
            ),
            height: getVerticalSize(
              0.93,
            ),
          ),
        ),
      ),
    );
  }
}

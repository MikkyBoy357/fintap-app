import '../controller/pay_bill_one_controller.dart';
import '../models/pay_bill_one_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PayBillOneItemWidget extends StatelessWidget {
  PayBillOneItemWidget(this.payBillOneItemModelObj);

  PayBillOneItemModel payBillOneItemModelObj;

  var controller = Get.find<PayBillOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "lbl_order_info".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansMedium12Bluegray200.copyWith(
                letterSpacing: getHorizontalSize(
                  0.50,
                ),
                height: getVerticalSize(
                  0.99,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 2,
              ),
              child: Text(
                "lbl_water_bill".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                  height: getVerticalSize(
                    0.95,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            left: 71,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_source_of_fund".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansMedium12Bluegray200.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.50,
                  ),
                  height: getVerticalSize(
                    0.99,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "lbl_balance".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                    height: getVerticalSize(
                      0.95,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

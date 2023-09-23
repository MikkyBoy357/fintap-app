import '../controller/send_money_to_friend_success_controller.dart';
import '../models/listorderinfo1_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listorderinfo1ItemWidget extends StatelessWidget {
  Listorderinfo1ItemWidget(this.listorderinfo1ItemModelObj);

  Listorderinfo1ItemModel listorderinfo1ItemModelObj;

  var controller = Get.find<SendMoneyToFriendSuccessController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                top: 3,
              ),
              child: Text(
                "lbl_send_money".tr,
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
            bottom: 1,
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

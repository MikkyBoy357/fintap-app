import '../controller/send_money_to_friend_add_controller.dart';
import '../models/content9_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content9ItemWidget extends StatelessWidget {
  Content9ItemWidget(this.content9ItemModelObj);

  Content9ItemModel content9ItemModelObj;

  var controller = Get.find<SendMoneyToFriendAddController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 12,
      ),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPhoto36x36,
            height: getSize(
              36.00,
            ),
            width: getSize(
              36.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 9,
              bottom: 7,
            ),
            child: Text(
              "lbl_courtney_henry".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                height: getVerticalSize(
                  1.06,
                ),
              ),
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
              top: 6,
              bottom: 6,
            ),
          ),
        ],
      ),
    );
  }
}

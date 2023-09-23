import '../controller/send_money_to_friend_two_controller.dart';
import '../models/content6_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content8ItemWidget extends StatelessWidget {
  Content8ItemWidget(this.content8ItemModelObj);

  Content6ItemModel content8ItemModelObj;

  var controller = Get.find<SendMoneyToFriendTwoController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.sendMoneyToFriendInputScreen),
      child: Container(
        padding: getPadding(
          all: 12,
        ),
        decoration: AppDecoration.outlineGray200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPhoto3,
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
                top: 8,
                bottom: 8,
              ),
              child: Text(
                "lbl_bessie_russell".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                  height: getVerticalSize(
                    1.06,
                  ),
                ),
              ),
            ),
            // Spacer(),
            // Obx(
            //   () => InkWell(
            //     onTap: () => content8ItemModelObj.isStared.value =
            //         !content8ItemModelObj.isStared.value,
            //     child: CustomImageView(
            //       svgPath: content8ItemModelObj.isStared.value
            //           ? ImageConstant.imgStar
            //           : ImageConstant.imgStarGray300,
            //       height: getSize(
            //         24.00,
            //       ),
            //       width: getSize(
            //         24.00,
            //       ),
            //       margin: getMargin(
            //         top: 6,
            //         bottom: 6,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

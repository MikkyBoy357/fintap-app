import '../controller/send_money_to_friend_two_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

import '../models/search_fintapers_model.dart';

// ignore: must_be_immutable
class Fintaper extends StatelessWidget {
  Fintaper({required this.searchData});

  SearchData searchData;

  var controller = Get.find<SendMoneyToFriendTwoController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed(AppRoutes.sendMoneyToFriendInputScreen, arguments: {
        "main_balance": Get.arguments,
        "search_data": searchData,
      }),
      child: Container(
        padding: getPadding(
          all: 12,
        ),
        decoration: AppDecoration.outlineGray200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.appLogo,
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
                "${searchData.firstname!} ${searchData.lastname!}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                  height: getVerticalSize(
                    1.06,
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

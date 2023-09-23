import 'package:fintap/widgets/spacing.dart';

import '../notification_transaction_page/widgets/content_item_widget.dart';
import '../notification_transaction_page/widgets/listvolume_item_widget.dart';
import 'controller/notification_transaction_controller.dart';
import 'models/content_item_model.dart';
import 'models/listvolume_item_model.dart';
import 'models/notification_transaction_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationTransactionPage extends StatelessWidget {
  NotificationTransactionController controller = Get.put(
      NotificationTransactionController(NotificationTransactionModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VerticalSpace(height: 14),
          Text(
            "lbl_today".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: AppStyle.txtGeneralSansMedium14Bluegray200.copyWith(
              letterSpacing: getHorizontalSize(
                1.00,
              ),
              height: getVerticalSize(
                0.85,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              top: 14,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Obx(
              () => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return CustomDivider();
                },
                itemCount: controller.notificationTransactionModelObj.value
                    .contentItemList.length,
                itemBuilder: (context, index) {
                  ContentItemModel model = controller
                      .notificationTransactionModelObj
                      .value
                      .contentItemList[index];
                  return ContentItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 14,
            ),
            child: Text(
              "lbl_yesterday".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansMedium14Bluegray200.copyWith(
                letterSpacing: getHorizontalSize(
                  1.00,
                ),
                height: getVerticalSize(
                  0.85,
                ),
              ),
            ),
          ),
          Container(
            width: size.width,
            margin: getMargin(top: 14, bottom: 20),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Obx(
              () => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return CustomDivider();
                },
                itemCount: controller.notificationTransactionModelObj.value
                    .listvolumeItemList.length,
                itemBuilder: (context, index) {
                  ListvolumeItemModel model = controller
                      .notificationTransactionModelObj
                      .value
                      .listvolumeItemList[index];
                  return ListvolumeItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

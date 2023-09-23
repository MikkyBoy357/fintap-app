import 'package:fintap/widgets/spacing.dart';

import '../notification_promotion_page/widgets/content1_item_widget.dart';
import 'controller/notification_promotion_controller.dart';
import 'models/content1_item_model.dart';
import 'models/notification_promotion_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationPromotionPage extends StatelessWidget {
  NotificationPromotionController controller = Get.put(
      NotificationPromotionController(NotificationPromotionModel().obs));

  @override
  Widget build(BuildContext context) {
    return Container(
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
          itemCount: controller
              .notificationPromotionModelObj.value.content1ItemList.length,
          itemBuilder: (context, index) {
            Content1ItemModel model = controller
                .notificationPromotionModelObj.value.content1ItemList[index];
            return Content1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

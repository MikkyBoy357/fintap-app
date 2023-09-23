import '../controller/notification_promotion_controller.dart';
import '../models/content1_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content1ItemWidget extends StatelessWidget {
  Content1ItemWidget(this.content1ItemModelObj);

  Content1ItemModel content1ItemModelObj;

  var controller = Get.find<NotificationPromotionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 14,
        right: 16,
        bottom: 14,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 40,
            width: 40,
            margin: getMargin(
              top: 11,
              bottom: 11,
            ),
            variant: IconButtonVariant.FillBlue50,
            shape: IconButtonShape.CircleBorder20,
            child: CustomImageView(
              svgPath: ImageConstant.imgOffer,
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 12,
                top: 2,
                right: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      217.00,
                    ),
                    child: Text(
                      "msg_use_moni_for_payment".tr,
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                        height: getVerticalSize(
                          1.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_11_00_am".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansMedium12Bluegray200.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.50,
                        ),
                        height: getVerticalSize(
                          0.99,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import '../controller/linked_account_controller.dart';
import '../models/content20_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content20ItemWidget extends StatelessWidget {
  Content20ItemWidget(this.content20ItemModelObj);

  Content20ItemModel content20ItemModelObj;

  var controller = Get.find<LinkedAccountController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 15,
        right: 16,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40,
            width: 40,
            padding: IconButtonPadding.PaddingAll7,
            child: CustomImageView(
              imagePath: content20ItemModelObj.img,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  content20ItemModelObj.title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                    height: getVerticalSize(
                      1.06,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "msg_linked_since_mar".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansRegular12Bluegray200.copyWith(
                      height: getVerticalSize(
                        0.99,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 10,
              bottom: 10,
            ),
            child: Text(
              "lbl_remove".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansSemibold14.copyWith(
                height: getVerticalSize(
                  1.27,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

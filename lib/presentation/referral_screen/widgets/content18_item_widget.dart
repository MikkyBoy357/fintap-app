import '../controller/referral_controller.dart';
import '../models/content18_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content18ItemWidget extends StatelessWidget {
  Content18ItemWidget(this.content18ItemModelObj);

  Content18ItemModel content18ItemModelObj;

  var controller = Get.find<ReferralController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 13,
        right: 16,
        bottom: 13,
      ),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPicture,
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
            margin: getMargin(
              top: 2,
              bottom: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_abdulkerim_dur".tr,
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
                    top: 5,
                  ),
                  child: Text(
                    "lbl_406_555_0120".tr,
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
              top: 12,
              bottom: 12,
            ),
            child: Text(
              "lbl_invite".tr,
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

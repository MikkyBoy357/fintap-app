import '../controller/history_two_controller.dart';
import '../models/content14_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content14ItemWidget extends StatelessWidget {
  Content14ItemWidget(this.content14ItemModelObj);

  Content14ItemModel content14ItemModelObj;

  var controller = Get.find<HistoryTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 13,
        right: 16,
        bottom: 13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse21,
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
                  "lbl_jessica_holland".tr,
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
                    "msg_01_1234567890".tr,
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
              top: 11,
              bottom: 10,
            ),
            child: Text(
              "lbl_250".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansMedium16Lightgreen500.copyWith(
                height: getVerticalSize(
                  0.93,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

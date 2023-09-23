import '../controller/notification_transaction_controller.dart';
import '../models/listvolume_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListvolumeItemWidget extends StatelessWidget {
  ListvolumeItemWidget(this.listvolumeItemModelObj);

  ListvolumeItemModel listvolumeItemModelObj;

  var controller = Get.find<NotificationTransactionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 14,
        bottom: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              svgPath: ImageConstant.imgVolume,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    233.00,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_you_received_money2".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray900,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w500,
                            height: getVerticalSize(
                              1.06,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_640".tr,
                          style: TextStyle(
                            color: ColorConstant.indigoA400,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w500,
                            height: getVerticalSize(
                              1.06,
                            ),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_11_00_am".tr,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

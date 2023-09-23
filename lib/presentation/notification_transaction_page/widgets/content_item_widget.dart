import '../controller/notification_transaction_controller.dart';
import '../models/content_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContentItemWidget extends StatelessWidget {
  ContentItemWidget(this.contentItemModelObj);

  ContentItemModel contentItemModelObj;

  var controller = Get.find<NotificationTransactionController>();

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
              svgPath: ImageConstant.imgComputer,
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 12,
                top: 1,
                right: 37,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      205.00,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_a_netflix_payout2".tr,
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
                            text: "lbl_192".tr,
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
                          TextSpan(
                            text: "msg_has_been_successful".tr,
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
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
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

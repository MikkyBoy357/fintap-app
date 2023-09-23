import '../controller/wallet_two_controller.dart';
import '../models/content17_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content17ItemWidget extends StatelessWidget {
  Content17ItemWidget(this.content17ItemModelObj);

  Content17ItemModel content17ItemModelObj;

  var controller = Get.find<WalletTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 14,
          right: 16,
          bottom: 14,
        ),
        decoration: AppDecoration.outlineGray200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 40,
              width: 40,
              margin: getMargin(
                top: 1,
                bottom: 1,
              ),
              variant: IconButtonVariant.FillBlue50,
              shape: IconButtonShape.CircleBorder20,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlusIndigoA400,
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
                    "lbl_add_fund".tr,
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
                      "msg_oct_10_2022_11_40".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansRegular12Bluegray200.copyWith(
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
                "lbl_503".tr,
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
      ),
    );
  }
}

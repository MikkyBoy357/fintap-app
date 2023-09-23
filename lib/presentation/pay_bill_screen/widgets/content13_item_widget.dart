import '../controller/pay_bill_controller.dart';
import '../models/content13_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content13ItemWidget extends StatelessWidget {
  Content13ItemWidget(this.content13ItemModelObj);

  Content13ItemModel content13ItemModelObj;

  var controller = Get.find<PayBillController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.payBillTwoScreen),
      child: Container(
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
            CustomIconButton(
              height: 40,
              width: 40,
              margin: getMargin(
                top: 2,
                bottom: 2,
              ),
              child: CustomImageView(
                svgPath: content13ItemModelObj.img,
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
                    content13ItemModelObj.title,
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
                      "msg_account_ending_in2".tr,
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
            Obx(
              () => InkWell(
                onTap: () => content13ItemModelObj.isStarred!.value =
                    !content13ItemModelObj.isStarred!.value,
                child: CustomImageView(
                  svgPath: content13ItemModelObj.isStarred!.value
                      ? ImageConstant.imgStar
                      : ImageConstant.imgStarGray300,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  margin: getMargin(
                    top: 6,
                    bottom: 6,
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

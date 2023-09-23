import '../controller/pay_bill_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../models/content13_item_model.dart';


// ignore: must_be_immutable
class Content12ItemWidget extends StatelessWidget {
  Content12ItemWidget(this.content12ItemModelObj);

  Content13ItemModel content12ItemModelObj;

  var controller = Get.find<PayBillController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (content12ItemModelObj.slug == "airtime") {
          Get.toNamed(
            AppRoutes.buyAirtimeScreen,
            arguments: content12ItemModelObj,
          );
        } else if (content12ItemModelObj.slug == "data") {
          Get.toNamed(
            AppRoutes.buyDataScreen,
            arguments: content12ItemModelObj,
          );
        } else if (content12ItemModelObj.slug == "electricity") {
          Get.toNamed(
            AppRoutes.buyElectricityScreen,
            arguments: content12ItemModelObj,
          );
        } else if (content12ItemModelObj.slug == "cable-tv") {
          Get.toNamed(
            AppRoutes.buyCableTVPlanScreen,
            arguments: content12ItemModelObj,
          );
        } else {}
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 56,
            width: 56,
            variant: IconButtonVariant.FillBlue50,
            shape: IconButtonShape.RoundedBorder13,
            child: CustomImageView(
              svgPath: content12ItemModelObj.img,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
            ),
            child: Text(
              content12ItemModelObj.title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtGeneralSansMedium12Bluegray900.copyWith(
                height: getVerticalSize(
                  0.99,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

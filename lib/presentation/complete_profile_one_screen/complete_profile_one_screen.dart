import 'controller/complete_profile_one_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CompleteProfileOneScreen extends StatelessWidget {
  var controller = Get.put(CompleteProfileOneController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(top: 25),
            child: Text("msg_add_profile_picture".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansSemibold16Bluegray900.copyWith(
                    letterSpacing: getHorizontalSize(0.50),
                    height: getVerticalSize(1.11)))),
        Container(
            height: getSize(144.00),
            width: getSize(144.00),
            margin: getMargin(top: 16),
            decoration: AppDecoration.fillGray200
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder72),
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  svgPath: ImageConstant.imgEyeBlueGray200,
                  height: getSize(96.00),
                  width: getSize(96.00),
                  alignment: Alignment.center),
              CustomIconButton(
                  height: 44,
                  width: 44,
                  variant: IconButtonVariant.FillLightgreen400,
                  shape: IconButtonShape.CircleBorder24,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(svgPath: ImageConstant.addIcon))
            ]))
      ],
    );
  }

  onTapArrowleft28() {
    Get.back();
  }
}

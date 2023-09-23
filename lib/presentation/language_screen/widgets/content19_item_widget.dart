import '../controller/language_controller.dart';
import '../models/content19_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content19ItemWidget extends StatelessWidget {
  Content19ItemWidget(this.content19ItemModelObj);

  Content19ItemModel content19ItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEngland,
            height: getVerticalSize(
              20.00,
            ),
            width: getHorizontalSize(
              30.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                4.00,
              ),
            ),
            margin: getMargin(
              top: 2,
              bottom: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 3,
              bottom: 1,
            ),
            child: Text(
              "lbl_english".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                height: getVerticalSize(
                  1.06,
                ),
              ),
            ),
          ),
          Spacer(),
          controller.locale == Locale('en')
              ? CustomImageView(
                  svgPath: ImageConstant.imgClockIndigoA40024x24,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: ColorConstant.gray300)),
                ),
        ],
      ),
    );
  }
}

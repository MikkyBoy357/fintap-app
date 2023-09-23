import '../controller/help_center_controller.dart';
import '../models/content21_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content21ItemWidget extends StatelessWidget {
  Content21ItemWidget(this.content21ItemModelObj, {required this.index});

  Content21ItemModel content21ItemModelObj;
  int index;
  var controller = Get.find<HelpCenterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: getPadding(
            right: 3,
          ),
          initiallyExpanded: index == 0 ? true : false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: getPadding(top: 3, bottom: 1, right: 14, left: 14),
                child: Text(
                  "msg_lorem_ipsum_dolor5".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                    height: getVerticalSize(
                      1.06,
                    ),
                  ),
                ),
              ),
            ],
          ),
          trailing: Obx(
            () => content21ItemModelObj.isSelected.value
                ? CustomImageView(
                    svgPath: ImageConstant.imgArrowrightDown,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  )
                : CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    margin: getMargin(
                      right: 3,
                    ),
                  ),
          ),
          children: [
            Padding(
              padding: getPadding(
                top: 10,
                right: 14,
                left: 14,
                bottom: 10,
              ),
              child: Text(
                "msg_lorem_ipsum_dolor4".tr,
                maxLines: null,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansRegular14.copyWith(
                  height: getVerticalSize(
                    1.16,
                  ),
                ),
              ),
            ),
          ],
          onExpansionChanged: (value) {
            content21ItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}

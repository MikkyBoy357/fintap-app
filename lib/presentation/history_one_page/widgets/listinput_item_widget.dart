import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../history_page/controller/history_controller.dart';

// ignore: must_be_immutable
class ListinputItemWidget extends StatelessWidget {
  ListinputItemWidget(this.listinputItemModelObj, {required this.index});

  String listinputItemModelObj;
  int index;
  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.selectedCategory.value = index;
          if (index == 0) {
            controller.showBoth.value = true;
            controller.showCredit.value = false;
            controller.showDebit.value = false;
          } else if (index == 1) {
            controller.showDebit.value = true;
            controller.showCredit.value = true;
            controller.showBoth.value = false;
          } else {
            controller.showCredit.value = true;
            controller.showDebit.value = false;

            controller.showBoth.value = false;
          }
        },
        child: Container(
            alignment: Alignment.center,
            width: getHorizontalSize(
              103.00,
            ),
            decoration: controller.selectedCategory.value == index
                ? AppDecoration.txtFillIndigoA400.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder18,
                  )
                : AppDecoration.txtOutlineGray300.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder18,
                  ),
            child: Text(
              listinputItemModelObj,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: controller.selectedCategory.value == index
                  ? AppStyle.txtGeneralSansMedium14WhiteA700.copyWith(
                      height: getVerticalSize(
                        1.06,
                      ),
                    )
                  : AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                      height: getVerticalSize(
                        1.06,
                      ),
                    ),
            )),
      ),
    );
  }
}

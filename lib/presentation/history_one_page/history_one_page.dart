import 'package:fintap/widgets/spacing.dart';

import '../../widgets/custom_radio_button.dart';
import '../history_one_page/widgets/listinput_item_widget.dart';
import 'controller/history_one_controller.dart';
import 'models/history_one_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryOnePage extends StatelessWidget {
  HistoryOneController controller =
      Get.put(HistoryOneController(HistoryOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: size.width,
          margin: getMargin(top: 4),
          padding: getPadding(left: 24, top: 23, right: 24, bottom: 23),
          decoration: AppDecoration.fillGray100,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HorizontalSpace(width: 24),
                          Text("lbl_sort_filer".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtGeneralSansSemibold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.50),
                                  height: getVerticalSize(0.99))),
                          CustomImageView(
                            svgPath: ImageConstant.imgCloseGray900,
                            height: getSize(24.00),
                            width: getSize(24.00),
                            onTap: () => Get.back(),
                          )
                        ])),
                Padding(
                    padding: getPadding(top: 31),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  onTapInput();
                                },
                                child: Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCalendarBlueGray500,
                                          height: getSize(24.00),
                                          width: getSize(24.00)),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 2, bottom: 2),
                                          child: Obx(() => Text(
                                              controller.historyOneModelObj
                                                  .value.enterTxt.value,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.50),
                                                      height: getVerticalSize(
                                                          1.27)))))
                                    ]))),
                          ),
                          HorizontalSpace(width: 10),
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  onTapInput1();
                                },
                                child: Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCalendarBlueGray500,
                                          height: getSize(24.00),
                                          width: getSize(24.00)),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 2, bottom: 2),
                                          child: Obx(() => Text(
                                              controller.historyOneModelObj
                                                  .value.enterOneTxt.value,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.50),
                                                      height: getVerticalSize(
                                                          1.27)))))
                                    ]))),
                          )
                        ])),
                Padding(
                    padding: getPadding(top: 26),
                    child: Text("lbl_category".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyle.txtGeneralSansSemibold16Bluegray900
                            .copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(1.11)))),
                Padding(
                    padding: getPadding(top: 11),
                    child: Obx(() => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisExtent: 38,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller
                            .historyOneModelObj.value.listinputItemList.length,
                        itemBuilder: (context, index) {
                          String model = controller.historyOneModelObj.value
                              .listinputItemList[index];
                          return ListinputItemWidget(
                            model,
                            index: index,
                          );
                        }))),
                Padding(
                    padding: getPadding(top: 25),
                    child: Text("lbl_sort".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyle.txtGeneralSansSemibold16Bluegray900
                            .copyWith(
                                letterSpacing: getHorizontalSize(0.50),
                                height: getVerticalSize(1.11)))),
                Padding(
                    padding: getPadding(top: 12),
                    child: InkWell(
                      onTap: () => controller.showNewest.value = true,
                      child: Obx(
                        () => CustomRadioButton(
                          value: "Newest",
                          text: "Newest",
                          groupValue: controller.sortGroupFamily.value,
                          onChanged: () {
                            controller.showNewest.value = true;
                          },
                        ),
                      ),
                    )),
                InkWell(
                  onTap: () => controller.showNewest.value = false,
                  child: Obx(
                    () => CustomRadioButton(
                      value: "Oldest",
                      text: "Oldest",
                      groupValue: controller.sortGroupFamily.value,
                      onChanged: () {
                        controller.showNewest.value = false;
                      },
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                    padding: getPadding(top: 0, bottom: 16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              height: 56,
                              width: 155,
                              text: "lbl_reset".tr,
                              variant: ButtonVariant.OutlineIndigoA400,
                              fontStyle: ButtonFontStyle
                                  .GeneralSansMedium16IndigoA400),
                          CustomButton(
                            height: 56,
                            width: 155,
                            text: "lbl_show".tr,
                            onTap: () {
                              Get.back();
                            },
                          )
                        ]))
              ])),
    );
  }

  Future<void> onTapInput() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.historyOneModelObj.value.selectedEnterTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      print(dateTime.toString());
      controller.historyOneModelObj.value.selectedEnterTxt = dateTime;
      controller.historyOneModelObj.value.enterTxt.value =
          dateTime.format(DD_MM_YYYY);
    }
  }

  Future<void> onTapInput1() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.historyOneModelObj.value.selectedEnterOneTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      print(dateTime.toString());

      controller.historyOneModelObj.value.selectedEnterOneTxt = dateTime;
      controller.historyOneModelObj.value.enterOneTxt.value =
          dateTime.format(DD_MM_YYYY);
    }
  }
}

import '../history_page/controller/history_controller.dart';
import '../history_page/widgets/filter_page.dart';

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/history_page/history_page.dart';
import 'package:fintap/presentation/history_two_page/history_two_page.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class HistoryTabContainerScreen extends StatelessWidget {
  var controller = Get.put(HistoryController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              padding: getPadding(
                top: 12,
                bottom: 12,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAppBar(
                    height: getVerticalSize(
                      56.00,
                    ),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "Transaction History",
                    ),
                    actions: [
                      AppbarImage(
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        onTap: () => Get.bottomSheet(HistoryFilterPage(),
                            isScrollControlled: true),
                        svgPath: ImageConstant.imgFilter,
                        margin: getMargin(
                          left: 24,
                          right: 24,
                          bottom: 2,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: getHorizontalSize(
                      327.00,
                    ),
                    margin: getMargin(
                      top: 21,
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                    ),
                    child: TabBar(
                      controller: controller.tabsController,
                      tabs: [
                        Tab(
                          text: "In Progess",
                        ),
                        Tab(
                          text: "Completed",
                        ),
                      ],
                      labelColor: ColorConstant.blueGray900,
                      unselectedLabelColor: ColorConstant.blueGray200,
                      indicator: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: TabBarView(
                  controller: controller.tabsController,
                  children: [
                    HistoryPage(),
                    HistoryTwoPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

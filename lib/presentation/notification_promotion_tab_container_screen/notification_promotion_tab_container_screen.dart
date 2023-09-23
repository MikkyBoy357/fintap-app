import 'package:fintap/widgets/bk_btn.dart';

import 'controller/notification_promotion_tab_container_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/notification_promotion_page/notification_promotion_page.dart';
import 'package:fintap/presentation/notification_transaction_page/notification_transaction_page.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationPromotionTabContainerScreen extends StatefulWidget {
  @override
  State<NotificationPromotionTabContainerScreen> createState() =>
      _NotificationPromotionTabContainerScreenState();
}

class _NotificationPromotionTabContainerScreenState
    extends State<NotificationPromotionTabContainerScreen>
    with SingleTickerProviderStateMixin {
  var controller = Get.put(NotificationPromotionTabContainerController());

  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: size.width,
                  padding: getPadding(top: 11, bottom: 11),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomAppBar(
                            height: getVerticalSize(56.00),
                            leadingWidth: 48,
                            leading: BkBtn(
                              margin: getMargin(left: 24),
                            ),
                            centerTitle: true,
                            title: AppbarSubtitle(text: "lbl_notification".tr)),
                        Container(
                            width: getHorizontalSize(327.00),
                            margin: getMargin(top: 23, bottom: 4),
                            padding: getPadding(all: 4),
                            decoration: BoxDecoration(
                                color: ColorConstant.gray100,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(12.00))),
                            child: TabBar(
                                controller: tabController,
                                tabs: [
                                  Tab(text: "lbl_transaction".tr),
                                  Tab(text: "lbl_promotion".tr)
                                ],
                                labelColor: ColorConstant.blueGray900,
                                unselectedLabelColor: ColorConstant.blueGray200,
                                indicator: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(8.00)))))
                      ])),
              Expanded(
                child: Container(
                    margin: getMargin(left: 24, top: 10, right: 24),
                    child: TabBarView(controller: tabController, children: [
                      NotificationTransactionPage(),
                      NotificationPromotionPage()
                    ])),
              )
            ])));
  }

  onTapArrowleft() {
    Get.back();
  }
}

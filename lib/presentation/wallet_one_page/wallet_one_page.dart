// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';

import '../../widgets/custom_button.dart';
import 'controller/wallet_one_controller.dart';
import 'models/active_investment_model.dart';
import 'models/wallet_one_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_image.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/wallet_one_item_widget.dart';

// ignore_for_file: must_be_immutable
class WalletOnePage extends StatefulWidget {
  @override
  State<WalletOnePage> createState() => _WalletOnePageState();
}

class _WalletOnePageState extends State<WalletOnePage> {
  WalletOneController controller =
      Get.put(WalletOneController(WalletOneModel().obs));

  _refreshData() async {
    // Simulating a network request delay
    await Future.delayed(Duration(seconds: 2));

    controller.fetchActiveInvestmentServices();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          backgroundColor: ColorConstant.whiteA700,
          height: getVerticalSize(
            60.00,
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "Investments",
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgPlusIndigoA40024x24,
              onTap: () => Get.toNamed(AppRoutes.walletScreen),
              margin: getMargin(
                left: 24,
                top: 12,
                right: 24,
                bottom: 24,
              ),
            ),
          ],
        ),
        body: Container(
            width: size.width,
            decoration: AppDecoration.fillGray100,
            child: Obx(
              () {
                if (controller.isLoading.value) {
                  return Container(
                    alignment: Alignment.center,
                    margin: getPadding(
                      left: 24,
                      right: 24,
                      bottom: 20,
                    ),
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: ColorConstant.lightGreen400,
                      radius: 20,
                    ),
                  );
                } else if (controller
                    .activeInvestmentServicesModel.value.data!.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No Active Investment"),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () => setState(() {
                            // Call the fetchActiveInvestmentServices() method here to update the data
                            controller.fetchActiveInvestmentServices();
                          }),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.refresh,
                                color: ColorConstant.indigoA400,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Refresh",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style:
                                    AppStyle.txtGeneralSansSemibold16.copyWith(
                                  height: getVerticalSize(
                                    1.11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          height: 55,
                          margin: getPadding(
                            left: 24,
                            right: 24,
                            bottom: 20,
                          ),
                          width: size.width * .5,
                          text: "Invest Now",
                          onTap: () => Get.toNamed(AppRoutes.walletScreen),
                        ),
                      ],
                    ),
                  );
                } else {
                  List<Data> activeInvestmentServices = controller
                      .activeInvestmentServicesModel.value.data!
                      .where((investment) =>
                          investment.extra!.status!.toLowerCase() == "active")
                      .toList();
                  return Container(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                      bottom: 24,
                    ),
                    child: RefreshIndicator(
                      onRefresh: () {
                        return Future.delayed(Duration(seconds: 1), () {
                          setState(() {
                            // Call the fetchActiveInvestmentServices() method here to update the data
                            controller.fetchActiveInvestmentServices();
                          });
                        });
                      },
                      child: ListView(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GridView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                153.00,
                              ),
                              crossAxisCount: 2,
                              mainAxisSpacing: getHorizontalSize(
                                17.00,
                              ),
                              crossAxisSpacing: getHorizontalSize(
                                17.00,
                              ),
                            ),
                            // physics: BouncingScrollPhysics(),
                            physics: ClampingScrollPhysics(),
                            itemCount: activeInvestmentServices.isEmpty
                                ? 0
                                : activeInvestmentServices.length,
                            itemBuilder: (context, index) {
                              final data = activeInvestmentServices[index];
                              return ActiveInvestmentItemWidget(
                                data,
                              );
                            },
                          ),
                          // Spacer(),
                        ],
                      ),
                    ),
                  );
                }
              },
            )),
      ),
    );
  }
}

import 'package:intl/intl.dart';

import '../controller/wallet_one_controller.dart';
import '../models/active_investment_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActiveInvestmentItemWidget extends StatelessWidget {
  ActiveInvestmentItemWidget(this.data);

  Data data;

  var controller = Get.find<WalletOneController>();

  String format = "dd-MM-yyyy HH:mm:ss";

  @override
  Widget build(BuildContext context) {
    DateTime startDate =
        DateFormat(format).parse(data.extra!.createDate!.toString());
    DateTime dueDate =
        DateFormat(format).parse(data.extra!.dueDate!.toString());

    DateTime now = DateTime.now();
    Duration totalDuration = dueDate.difference(startDate);
    Duration progressDuration = now.difference(startDate);

    final progress =
        (progressDuration.inMilliseconds / totalDuration.inMilliseconds)
            .clamp(0.0, 1.0);
    final progressPercentage = (progress * 100).toStringAsFixed(
        2); // Convert progress to percentage with two decimal places

    return InkWell(
      onTap: () =>
          Get.toNamed(AppRoutes.walletTwoScreen, arguments: data.reference),
      child: Container(
        padding: getPadding(
          all: 16,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 40,
                  width: 40,
                  variant: IconButtonVariant.FillLime50,
                  shape: IconButtonShape.CircleBorder20,
                  padding: IconButtonPadding.PaddingAll7,
                  child: CustomImageView(
                    svgPath: ImageConstant.briefSVGIcon,
                    width: 20,
                    height: 20,
                    color: ColorConstant.lightGreen500,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    bottom: 22,
                  ),
                  child: Text(
                    '$progressPercentage %',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtGeneralSansSemibold12.copyWith(
                      height: getVerticalSize(
                        0.99,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: Text(
                "${data.extra!.plan!}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansMedium16Bluegray900.copyWith(
                  height: getVerticalSize(
                    1.11,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 2,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Day ".tr,
                      style: TextStyle(
                        color: ColorConstant.blue100,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'General Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: getHorizontalSize(
                          0.50,
                        ),
                        height: getVerticalSize(
                          0.99,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "${progressDuration.inDays}",
                      style: TextStyle(
                        color: ColorConstant.blueGray200,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'General Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: getHorizontalSize(
                          0.50,
                        ),
                        height: getVerticalSize(
                          0.99,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: " / ${totalDuration.inDays}",
                      style: TextStyle(
                        color: ColorConstant.blueGray500,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'General Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: getHorizontalSize(
                          0.50,
                        ),
                        height: getVerticalSize(
                          0.99,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    3.00,
                  ),
                ),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: ColorConstant.gray200,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ColorConstant.indigoA400,
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

import 'dart:developer';

import 'package:fintap/core/utils/money_formater.dart';
import 'package:intl/intl.dart';

import '../../payment_success_screen/payment_success_screen.dart';
import '../controller/home_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../models/transaction_model.dart';

// ignore: must_be_immutable
class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget(this.transactionData);

  Data transactionData;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    log(transactionData.toJson().toString());
    return GestureDetector(
      onTap: () {
        if (transactionData.description!
            .toUpperCase()
            .contains('FLUTTERWAVE')) {
          Get.snackbar(
            "Error",
            "An error occurred while processing your request. Please try again later.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else {
          Get.to(() => PaymentSuccessScreen(), arguments: transactionData);
        }
      },
      child: Container(
        padding: getPadding(
          left: 12,
          top: 13,
          right: 12,
          bottom: 13,
        ),
        decoration: AppDecoration.outlineGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 40,
              width: 40,
              shape: IconButtonShape.CircleBorder20,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2540x40,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                top: 2,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      transactionData.description ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                        height: getVerticalSize(
                          1.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      DateFormat.MMMd().format(
                            DateTime.parse(
                              transactionData.createdAt ?? "",
                            ),
                          ) +
                          ", " +
                          DateFormat.jm().format(
                            DateTime.parse(
                              transactionData.createdAt ?? "",
                            ),
                          ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansMedium12Bluegray200.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.50,
                        ),
                        height: getVerticalSize(
                          0.99,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: getPadding(
                top: 10,
                bottom: 9,
              ),
              child: Text(
                transactionData.type == "DEBIT"
                    ? "- ${moneyFormat().format(double.parse("${transactionData.amount}"))}"
                    : "+ ${moneyFormat().format(double.parse("${transactionData.amount}"))}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansMedium16.copyWith(
                  fontSize: 15.5,
                  height: getVerticalSize(
                    0.93,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../history_page/controller/history_controller.dart';

import '../home_page/models/transaction_model.dart';
import '../home_page/widgets/transaction_item_widget.dart';

import 'package:fintap/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryTwoPage extends StatefulWidget {
  @override
  State<HistoryTwoPage> createState() => _HistoryTwoPageState();
}

class _HistoryTwoPageState extends State<HistoryTwoPage> {
  HistoryController controller = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(Duration(seconds: 1), () {
            setState(() {
              // Call the fetchActiveInvestmentServices() method here to update the data
              controller.fetchUserTransactions();
            });
          });
        },
        child: ListView(
          children: [
            Obx(
              () {
                if (controller.isTransactionLoading.value) {
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
                } else if (controller.completedTransactions.isEmpty) {
                  return Container(
                      height: getVerticalSize(300),
                      alignment: Alignment.center,
                      margin: getPadding(
                        left: 24,
                        right: 24,
                        bottom: 20,
                      ),
                      child: Text("No Transactions Found",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtGeneralSansRegular14
                              .copyWith(height: getVerticalSize(1.16))));
                } else {
                  List<Data> filteredTransactions =
                      controller.completedTransactions.where((transaction) {
                    // Check if transaction date is within the specified range
                    print(transaction.createdAt!);
                    bool isWithinRange = DateTime.parse(transaction.createdAt!)
                            .isAfter(
                                DateTime.parse(controller.startDate.value)) &&
                        DateTime.parse(transaction.createdAt!)
                            .isBefore(DateTime.parse(controller.endDate.value));

                    // Check if the transaction type matches the specified type(s)
                    bool matchesDebit = controller.showDebit.value &&
                        transaction.type!.toLowerCase() == "debit";
                    final matchesCredit = controller.showCredit.value &&
                        transaction.type == "credit";
                    final matchesBoth = controller.showBoth.value;

                    return isWithinRange ||
                        (matchesDebit || matchesCredit || matchesBoth);
                  }).toList();

                  if (filteredTransactions.isEmpty) {
                    return Container(
                        height: getVerticalSize(300),
                        alignment: Alignment.center,
                        margin: getPadding(
                          left: 24,
                          right: 24,
                          bottom: 20,
                        ),
                        child: Text("No Transactions Found",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtGeneralSansRegular14
                                .copyWith(height: getVerticalSize(1.16))));
                  }
                  return ListView.separated(
                    // padding: getPadding(top: 20, bottom: 20),
                    reverse:
                        controller.sortNewest.value == 'newest' ? true : false,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          8.00,
                        ),
                      );
                    },
                    itemCount: filteredTransactions.isEmpty
                        ? 0
                        : filteredTransactions.length,
                    itemBuilder: (context, index) {
                      Data data = filteredTransactions[index];

                      return TransactionItemWidget(
                        data,
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

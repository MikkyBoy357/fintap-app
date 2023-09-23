import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/history_one_page/models/history_one_model.dart';

class HistoryOneController extends GetxController {
  HistoryOneController(this.historyOneModelObj);

  Rx<HistoryOneModel> historyOneModelObj;
  Rx<int> selectedCategory = 0.obs;
  Rx<String> sortGroupFamily = "lbl_newest".tr.obs;
   Rx<DateTime> startDate = DateTime.now().obs;
  Rx<DateTime> endDate = DateTime.now().obs;
  RxBool showDebit = false.obs;
  RxBool showCredit = false.obs;
  RxBool showBoth = true.obs;
  RxBool showNewest = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

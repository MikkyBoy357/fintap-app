import 'package:get/get.dart';
import 'content16_item_model.dart';

class HistoryOneModel {
  RxList<Content16ItemModel> content16ItemList =
      RxList.filled(2, Content16ItemModel());

  DateTime selectedEnterTxt = DateTime.now();

  Rx<String> enterTxt = Rx("lbl_start_date".tr);

  DateTime selectedEnterOneTxt = DateTime.now();

  Rx<String> enterOneTxt = Rx("lbl_end_date".tr);

  RxList<String> listinputItemList = RxList([
    'All',
    'Debit',
    'Credit',
  ]);
}

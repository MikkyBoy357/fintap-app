import 'package:get/get.dart';
import 'package:fintap/data/models/selectionPopupModel/selection_popup_model.dart';

class NewCardModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  DateTime selectedEnterOneTxt = DateTime.now();

  Rx<String> enterOneTxt = Rx("lbl_expiry_date".tr);
}

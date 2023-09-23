import 'package:get/get.dart';
import 'package:fintap/data/models/selectionPopupModel/selection_popup_model.dart';

class SecuritySettingFourModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "msg_what_is_your_first".tr,
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Question2",
    ),
  ].obs;
}

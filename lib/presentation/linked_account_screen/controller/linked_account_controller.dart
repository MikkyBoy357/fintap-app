import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/linked_account_screen/models/linked_account_model.dart';

class LinkedAccountController extends GetxController {
  Rx<LinkedAccountModel> linkedAccountModelObj = LinkedAccountModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

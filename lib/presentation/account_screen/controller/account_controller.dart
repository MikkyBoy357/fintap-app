import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/account_screen/models/account_model.dart';

class AccountController extends GetxController {
  Rx<AccountModel> accountModelObj = AccountModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

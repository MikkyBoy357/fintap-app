

import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/send_money_screen/models/send_money_model.dart';



class SendMoneyController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<SendMoneyModel> sendMoneyModelObj = SendMoneyModel().obs;



  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

 
}

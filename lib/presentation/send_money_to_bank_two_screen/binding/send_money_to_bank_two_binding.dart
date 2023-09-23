import '../controller/send_money_to_bank_two_controller.dart';
import 'package:get/get.dart';

class SendMoneyToBankTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToBankTwoController());
  }
}

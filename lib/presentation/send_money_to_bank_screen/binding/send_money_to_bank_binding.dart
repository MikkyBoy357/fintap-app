import '../controller/send_money_to_bank_controller.dart';
import 'package:get/get.dart';

class SendMoneyToBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToBankController());
  }
}

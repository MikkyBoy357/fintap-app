import '../controller/send_money_to_bank_one_controller.dart';
import 'package:get/get.dart';

class SendMoneyToBankOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToBankOneController());
  }
}

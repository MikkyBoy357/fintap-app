import '../controller/send_money_to_bank_three_controller.dart';
import 'package:get/get.dart';

class SendMoneyToBankThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToBankThreeController());
  }
}

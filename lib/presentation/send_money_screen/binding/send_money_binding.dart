import '../controller/send_money_controller.dart';
import 'package:get/get.dart';

class SendMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyController());
  }
}

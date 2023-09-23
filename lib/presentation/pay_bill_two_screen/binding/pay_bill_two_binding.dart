import '../controller/pay_bill_two_controller.dart';
import 'package:get/get.dart';

class PayBillTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayBillTwoController());
  }
}

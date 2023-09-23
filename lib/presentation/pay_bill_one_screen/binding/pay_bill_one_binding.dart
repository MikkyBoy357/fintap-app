import '../controller/pay_bill_one_controller.dart';
import 'package:get/get.dart';

class PayBillOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayBillOneController());
  }
}

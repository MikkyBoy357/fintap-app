import '../controller/top_up_with_paypal_controller.dart';
import 'package:get/get.dart';

class TopUpWithPaypalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopUpWithPaypalController());
  }
}

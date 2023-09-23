import '../controller/top_up_success_controller.dart';
import 'package:get/get.dart';

class TopUpSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopUpSuccessController());
  }
}

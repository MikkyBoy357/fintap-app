import '../controller/top_up_controller.dart';
import 'package:get/get.dart';

class TopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopUpController());
  }
}

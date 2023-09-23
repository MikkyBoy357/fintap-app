import '../controller/select_method_controller.dart';
import 'package:get/get.dart';

class SelectMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectMethodController());
  }
}

import '../controller/pin_one_controller.dart';
import 'package:get/get.dart';

class PinOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PinOneController());
  }
}

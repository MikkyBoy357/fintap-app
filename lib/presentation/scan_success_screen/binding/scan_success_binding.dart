import '../controller/scan_success_controller.dart';
import 'package:get/get.dart';

class ScanSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanSuccessController());
  }
}

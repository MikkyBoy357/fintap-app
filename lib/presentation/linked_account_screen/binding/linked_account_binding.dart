import '../controller/linked_account_controller.dart';
import 'package:get/get.dart';

class LinkedAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkedAccountController());
  }
}

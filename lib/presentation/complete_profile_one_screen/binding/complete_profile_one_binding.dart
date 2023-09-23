import '../controller/complete_profile_one_controller.dart';
import 'package:get/get.dart';

class CompleteProfileOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileOneController());
  }
}

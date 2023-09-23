import '../controller/complete_profile_two_controller.dart';
import 'package:get/get.dart';

class CompleteProfileTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileTwoController());
  }
}

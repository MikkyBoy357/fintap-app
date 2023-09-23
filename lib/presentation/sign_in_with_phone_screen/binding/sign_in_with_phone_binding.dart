import '../controller/sign_in_with_phone_controller.dart';
import 'package:get/get.dart';

class SignInWithPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInWithPhoneController());
  }
}

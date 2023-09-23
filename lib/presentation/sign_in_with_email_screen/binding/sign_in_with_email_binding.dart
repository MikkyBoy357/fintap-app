import '../controller/sign_in_with_email_controller.dart';
import 'package:get/get.dart';

class SignInWithEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInWithEmailController());
  }
}

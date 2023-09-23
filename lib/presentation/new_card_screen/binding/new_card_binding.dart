import '../controller/new_card_controller.dart';
import 'package:get/get.dart';

class NewCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewCardController());
  }
}

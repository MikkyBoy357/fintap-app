import '../controller/send_money_to_friend_input_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendInputController());
  }
}

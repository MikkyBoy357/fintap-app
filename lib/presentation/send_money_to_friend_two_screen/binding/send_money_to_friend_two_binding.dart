import '../controller/send_money_to_friend_two_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendTwoController());
  }
}
